"""OpenAI Responses API + Factor Weave — function-calling example.

When you want fine-grained control rather than the Agents SDK's loop, the
Responses API lets you declare individual tool functions and handle the
tool-call cycle yourself. This is the pattern to use if you're embedding
Factor Weave queries inside a larger custom flow.

Same auth model as agents_sdk_example.py: your OpenAI key and FW key both
held by your server-side code, never exposed to end users.

Install:
    pip install openai factorweave

Auth:
    OPENAI_API_KEY        — your OpenAI key
    FACTORWEAVE_API_KEY   — your FW fw_live_… key

Run:
    OPENAI_API_KEY=sk-...                              \\
    FACTORWEAVE_API_KEY=fw_live_...                    \\
    python sdk/openai/responses_api_example.py

Note: The Responses API replaced the (deprecated) Assistants API in 2025.
Migration guide: https://platform.openai.com/docs/guides/migrate-to-responses
"""
from __future__ import annotations
import json
import os
import sys


def _require_env(name: str) -> str:
    v = os.environ.get(name)
    if not v:
        sys.stderr.write(f"error: ${name} not set\n")
        sys.exit(2)
    return v


def main() -> None:
    try:
        from openai import OpenAI
        from factorweave import Client as FW
    except ImportError as e:
        sys.stderr.write(
            f"error: {e}\n"
            "       pip install openai factorweave\n"
        )
        sys.exit(1)

    fw_key = _require_env("FACTORWEAVE_API_KEY")
    _require_env("OPENAI_API_KEY")

    openai = OpenAI()
    fw = FW(api_key=fw_key)

    # Declare the FW tool calls the model can make. We pick three useful ones;
    # the same pattern extends to all 28 FW endpoints.
    tools = [
        {
            "type": "function",
            "name": "fw_features",
            "description": (
                "Get the latest factor row for one US ticker (returns, RSI, "
                "momentum, vol, beta, composite score)."
            ),
            "parameters": {
                "type": "object",
                "properties": {"ticker": {"type": "string", "description": "e.g. AAPL"}},
                "required": ["ticker"],
            },
        },
        {
            "type": "function",
            "name": "fw_top",
            "description": "Top-N tickers ranked by a factor (e.g. 'mom', 'rsi', 'comp_score').",
            "parameters": {
                "type": "object",
                "properties": {
                    "factor": {"type": "string"},
                    "n": {"type": "integer", "default": 25},
                },
                "required": ["factor"],
            },
        },
        {
            "type": "function",
            "name": "fw_market_context",
            "description": "Current SPY-volatility regime plus market dispersion / breadth.",
            "parameters": {"type": "object", "properties": {}},
        },
    ]

    # The tool dispatch table — maps function name → real Factor Weave call.
    def dispatch(name: str, args: dict) -> str:
        if name == "fw_features":
            return json.dumps(fw.features(args["ticker"]).to_list()[:1])
        if name == "fw_top":
            return json.dumps(fw.top(args["factor"], n=args.get("n", 25)).to_list())
        if name == "fw_market_context":
            return json.dumps(fw.market_context())
        return json.dumps({"error": f"unknown tool {name}"})

    user_message = (
        "What volatility regime is the market in, and show me 5 strong-momentum "
        "tickers that aren't already overbought on RSI. Cite the values."
    )

    print(f"USER: {user_message}\n")

    # Single-shot Responses API call with tool handling loop.
    inputs = [{"role": "user", "content": user_message}]
    while True:
        resp = openai.responses.create(model="gpt-5", input=inputs, tools=tools)
        # Collect tool calls (if any)
        tool_calls = [out for out in resp.output if getattr(out, "type", "") == "function_call"]
        if not tool_calls:
            print(f"AGENT: {resp.output_text}\n")
            break
        # Execute each tool call, append the result, loop.
        for call in tool_calls:
            args = json.loads(call.arguments)
            print(f"  ↳ tool: {call.name}({args})")
            result = dispatch(call.name, args)
            inputs.append(call)
            inputs.append({
                "type": "function_call_output",
                "call_id": call.call_id,
                "output": result,
            })


if __name__ == "__main__":
    main()
