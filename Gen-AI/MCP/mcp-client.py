import asyncio
import json
from mcp import ClientSession, StdioServerParameters
from mcp.client.stdio import stdio_client

async def demo():
    server_params = StdioServerParameters(command="python", args=["-u", "mcp-server.py"])

    async with stdio_client(server_params) as (read, write):
        async with ClientSession(read, write) as session:
            await session.initialize()

            tools = (await session.list_tools()).tools
            tool_names = [t.name for t in tools]
            print("Tools available:", tool_names)

            if "query_db" not in tool_names:
                print("Server does not expose tool 'query_db'. Exiting.")
                return

            while True:
                user_input = await asyncio.to_thread(input, "\nEnter query or q to quit: ")
                if user_input.lower() == "q":
                    break
                if not user_input.strip():
                    continue

                result = await session.call_tool("query_db", {"query": user_input})

                if not result.content:
                    print("No content returned")
                    continue

                # print all returned parts robustly
                for item in result.content:
                    txt = getattr(item, "text", None)
                    if txt is not None:
                        print(txt)
                    else:
                        print(json.dumps(item, default=str, indent=2))

asyncio.run(demo())
