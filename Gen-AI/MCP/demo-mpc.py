import os
import mysql.connector
from mcp.server.fastmcp import FastMCP

mcp = FastMCP("MySQL Demo Server")


@mcp.tool()

def query_db(query: str) -> dict:
   """ Execute read-only SQL query on database."""
    conn=mysql.connector.connect(host='localhost')
    user='root',password

    cur=
    cur.execute(quary)
    result= [dict(row) for in cur.fetchall()]
    cur.close()
    conn.close()

return {"result": results, ""