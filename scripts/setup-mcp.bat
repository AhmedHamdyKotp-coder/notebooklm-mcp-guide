@echo off
echo ==========================================
echo  NotebookLM MCP Setup Script (Windows)
echo  By ePreneurs
echo ==========================================
echo.

echo [1/4] Checking Python installation...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Python is not installed!
    echo Please install Python from https://python.org
    pause
    exit /b 1
)
echo Python found!
echo.

echo [2/4] Installing uv package manager...
pip install uv
echo.

echo [3/4] Installing NotebookLM MCP server...
uv pip install notebooklm-mcp
echo.

echo [4/4] Running authentication...
echo.
echo IMPORTANT: 
echo 1. A browser window will open
echo 2. Sign OUT of NotebookLM first if already signed in
echo 3. Then sign in with your Google account
echo 4. Authentication will complete automatically
echo.
notebooklm-mcp-auth

echo.
echo ==========================================
echo  Setup Complete!
echo  
echo  Next Steps:
echo  1. Add the MCP config to AntiGravity/Claude Desktop
echo  2. Check that NotebookLM MCP is GREEN
echo  3. Test with: "List my notebooks"
echo ==========================================
pause
