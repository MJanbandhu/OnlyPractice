import os
import mysql.connector
from mcp.server.fastmcp import FastMCP

mcp = FastMCP("MYSQL Demo Server")

@mcp.tool()
def query_db(query: str) -> dict:
  """Execute read-only SQL query on database."""
  conn = mysql.connector.connect(host ='localhost',port=3306,     user='root',password='demopass',database='test')
  cur = conn.cursor(dictionary=True)
  cur.execute(query)
  results = [dict(row) for row in cur.fetchall()]
  cur.close()
  conn.close()
  return {"results":results, "query":query}

if __name__ == "__main__":
  mcp.run(transport="stdio")