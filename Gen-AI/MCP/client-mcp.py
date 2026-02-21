import asyncio
# syncroneus
import json
from mcp import ClientSession, StdioServerParameters
from mcp.client.stdio import stdio_client


async def demo():
    Server_params =StdioServerParameters( commnd="")