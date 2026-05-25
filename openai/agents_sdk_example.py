"""OpenAI Agents SDK + Factor Weave MCP — minimal working example.

Wires the OpenAI Agents SDK (`openai-agents` PyPI package) at a Factor Weave
MCP server. The agent gets all 12 Factor Weave tools alongside whatever else
you give it. Your OpenAI key and your Factor Weave key both live in your code
— end users never see either.

Install:
    pip install openai-agents          # Agents SDK
    # optional, only if you want to ALSO call FW endpoints directly:
    pip install factorweave

Auth:
    OPENAI_API_KEY        — your OpenAI key, for the model itself
    FACTORWEAVE_API_KEY   — your Factor Weave fw_live_… key, for the MCP tools

Run:
    OPENAI_API_KEY=sk-...                              \\
    FACTORWEAVE_API_KEY=fw_live_...                    \\
    python sdk/openai/agents_sdk_example.py

References:
    OpenAI Agents SDK docs:  https://openai.github.io/openai-agents-python/
    Factor Weave MCP:        https://factorweave.com/mcp.html
"""
from __future__ import annotations
import asyncio
import os
import sys


def _require_env(name: str) -> str:
    v = os.environ.get(name)
    if not v:
        sys.stderr.write(f"error: ${name} not set\n")
        sys.exit(2)
    return v


async def main() -> None:
    # Imports are deferred so `python agents_sdk_example.py` --help works
    # without openai-agents installed.
    try:
        from agents import Agent, Runner
        from agents.mcp import MCPServerStreamableHttp
    except ImportError:
        sys.stderr.write(
            "error: openai-agents not installed.\n"
            "       pip install openai-agents\n"
        )
        sys.exit(1)

    fw_key = _require_env("FACTORWEAVE_API_KEY")
    _require_env("OPENAI_API_KEY")  # Agents SDK reads it from env

    # The Agents SDK has first-class MCP client support — declare the
    # Factor Weave server, pass auth in `headers`, and it shows up as a
    # tool source to whatever agent you compose.
    fw_mcp = MCPServerStreamableHttp(
        params={
            "url": "https://factorweave.com/api/mcp",
            "headers": {"X-API-Key": fw_key},
            # Optional knobs:
            # "timeout": 30,
            # "sse_read_timeout": 60,
        },
        name="factorweave",
        cache_tools_list=True,  # re-fetch only if the server changes
    )

    async with fw_mcp:
        agent = Agent(
            name="QuantResearchAssistant",
            instructions=(
                "You are a quant-research assistant with access to Factor Weave's "
                "quant-data API tools. Use them to answer questions about the US "
                "equity market. Factor Weave is a RESEARCH SUBSTRATE, not a "
                "prediction service — never claim factor similarity predicts "
                "returns. Use the data for screening, peer-finding, and "
                "regime-aware exploration."
            ),
            mcp_servers=[fw_mcp],
        )

        prompt = (
            "What volatility regime is the market in right now, and "
            "show me 5 strong-momentum tickers that aren't already overbought "
            "on RSI. Cite the values."
        )
        print(f"USER: {prompt}\n")

        result = await Runner.run(agent, prompt)
        print(f"AGENT: {result.final_output}\n")

        # Inspect what tools the agent actually called
        for item in result.new_items:
            if hasattr(item, "tool_name"):
                print(f"  ↳ tool used: {item.tool_name}")


if __name__ == "__main__":
    asyncio.run(main())
