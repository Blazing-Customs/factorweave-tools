/**
 * Factor Weave — Google Sheets add-on.
 *
 * Custom functions to pull factor data, top-N rankings, derived analytics,
 * and the per-ticker report card straight into a sheet. Auth is a per-user
 * API key stored in PropertiesService (Extensions → Factor Weave → Set API key…).
 *
 * Functions:
 *   =FACTORWEAVE(ticker, factor)   — one factor value, e.g. =FACTORWEAVE("AAPL","rsi")
 *   =FW_TOP(factor, n)             — top-N tickers as a 2D range
 *   =FW_MARKET_CONTEXT()           — today's whole-universe regime/dispersion/breadth
 *   =FW_REPORT_CARD(ticker)        — full per-ticker digest (HOBBY+)
 *
 * Sheets caches custom-function results so calls are not as cheap as they
 * look — recalcs only fire when an input cell changes or on file open.
 */

const FW_BASE = 'https://factorweave.com/api';

// ---- Menu (runs on spreadsheet open) ----

function onOpen() {
  SpreadsheetApp.getUi()
    .createMenu('Factor Weave')
    .addItem('Set API key…',     'fwSetApiKey')
    .addItem('Show daily usage', 'fwShowUsage')
    .addSeparator()
    .addItem('Open docs',        'fwOpenDocs')
    .addToUi();
}

function fwSetApiKey() {
  const ui = SpreadsheetApp.getUi();
  const r = ui.prompt(
    'Factor Weave API key',
    'Paste your fw_live_… key (mint one at factorweave.com → Profile → API keys):',
    ui.ButtonSet.OK_CANCEL
  );
  if (r.getSelectedButton() !== ui.Button.OK) return;
  const key = (r.getResponseText() || '').trim();
  if (!key) { ui.alert('No key entered.'); return; }
  PropertiesService.getUserProperties().setProperty('FW_API_KEY', key);
  ui.alert('Saved', 'Your API key is stored. Try =FACTORWEAVE("AAPL","rsi") in a cell.', ui.ButtonSet.OK);
}

function fwShowUsage() {
  try {
    const u = fwGet_('/usage');
    SpreadsheetApp.getUi().alert(
      'Usage today',
      u.daily_calls + ' / ' + u.daily_limit + ' calls — resets ' + u.limit_reset_time
    );
  } catch (e) {
    SpreadsheetApp.getUi().alert(String(e.message || e));
  }
}

function fwOpenDocs() {
  SpreadsheetApp.getUi().alert(
    'Factor Weave docs',
    'https://factorweave.com/#docs\n\nOpenAPI: https://factorweave.com/api/openapi.json'
  );
}

// ---- Internals ----

function fwGet_(path) {
  const key = PropertiesService.getUserProperties().getProperty('FW_API_KEY');
  if (!key) {
    throw new Error('No API key. Extensions → Factor Weave → Set API key… (mint one at factorweave.com/Profile)');
  }
  const resp = UrlFetchApp.fetch(FW_BASE + path, {
    method: 'get',
    headers: { 'X-API-Key': key, 'Accept': 'application/json' },
    muteHttpExceptions: true,
  });
  const code = resp.getResponseCode();
  const body = resp.getContentText();
  if (code >= 400) {
    let detail = body;
    try { detail = JSON.parse(body).detail || detail; } catch (_e) {}
    throw new Error('Factor Weave ' + code + ': ' + detail);
  }
  return JSON.parse(body);
}

// ---- Custom functions ----

/**
 * One factor value for a ticker (latest day).
 *
 * @param {string} ticker e.g. "AAPL"
 * @param {string} factor e.g. "rsi", "mom", "comp_score", "rv_20", "beta_spy"
 * @return The factor value as a number.
 * @customfunction
 */
function FACTORWEAVE(ticker, factor) {
  if (!ticker || !factor) return '#FW! ticker and factor required';
  const rows = fwGet_('/features/' + encodeURIComponent(String(ticker).toUpperCase()));
  const row  = Array.isArray(rows) ? rows[0] : (rows && rows.rows ? rows.rows[0] : rows);
  if (!row) return '#FW! no data';
  const v = row[String(factor)];
  if (v === undefined) return '#FW! no factor "' + factor + '"';
  return v;
}

/**
 * Top-N tickers ranked by a factor. Returns a 2-column range.
 *
 * @param {string} factor Factor name, e.g. "mom"
 * @param {number} n      How many (1-100, default 25)
 * @return Two-column array: [["ticker","factor"], ...]
 * @customfunction
 */
function FW_TOP(factor, n) {
  factor = String(factor || 'mom');
  n = Math.max(1, Math.min(100, Number(n) || 25));
  const data = fwGet_('/top?factor=' + encodeURIComponent(factor) + '&n=' + n);
  const rows = (data && data.rows) || [];
  const out  = [['ticker', factor]];
  for (let i = 0; i < rows.length; i++) {
    out.push([rows[i].ticker, rows[i][factor] != null ? rows[i][factor] : '']);
  }
  return out;
}

/**
 * Today's market context — regime, dispersion percentile, breadth.
 *
 * @return Two-column key/value array.
 * @customfunction
 */
function FW_MARKET_CONTEXT() {
  const r = fwGet_('/market-context?latest=1');
  const l = (r && r.latest) || {};
  return [
    ['field', 'value'],
    ['date',                 l.date || ''],
    ['regime',               l.regime || ''],
    ['disp_momentum',        l.disp_momentum != null ? l.disp_momentum : ''],
    ['disp_momentum_pctile', l.disp_momentum_pctile != null ? l.disp_momentum_pctile : ''],
    ['breadth_momentum',     l.breadth_momentum != null ? l.breadth_momentum : ''],
    ['breadth_ret_20d',      l.breadth_ret_20d != null ? l.breadth_ret_20d : ''],
    ['pct_overbought',       l.pct_overbought != null ? l.pct_overbought : ''],
    ['pct_oversold',         l.pct_oversold != null ? l.pct_oversold : ''],
  ];
}

/**
 * Per-ticker report card: snapshot + ranks + risk cluster + regime +
 * unusualness. Requires HOBBY+ tier.
 *
 * @param {string} ticker
 * @return Two-column key/value array.
 * @customfunction
 */
function FW_REPORT_CARD(ticker) {
  if (!ticker) return '#FW! ticker required';
  const r = fwGet_('/report-card/' + encodeURIComponent(String(ticker).toUpperCase()));
  const out = [['field', 'value']];
  out.push(['ticker', r.ticker || '']);
  out.push(['as_of',  r.as_of  || '']);
  const snap = r.snapshot || {};
  Object.keys(snap).forEach(function (k) { out.push(['snapshot.' + k, snap[k]]); });
  const ranks = r.percentile_ranks || {};
  Object.keys(ranks).forEach(function (k) { out.push(['rank.' + k, ranks[k]]); });
  if (r.risk_cluster && !r.risk_cluster.locked) {
    out.push(['risk_cluster',   r.risk_cluster.risk_cluster]);
    out.push(['vol_percentile', r.risk_cluster.vol_percentile]);
  } else if (r.risk_cluster && r.risk_cluster.locked) {
    out.push(['risk_cluster', '(PRO+ tier required)']);
  }
  out.push(['market_regime', r.market_regime || '']);
  if (r.unusualness && r.unusualness.available) {
    out.push(['unusualness.score',   r.unusualness.score]);
    out.push(['unusualness.verdict', r.unusualness.verdict]);
  }
  return out;
}
