#!/bin/bash
echo "=========================================="
echo " NotebookLM MCP Setup Script (Mac/Linux)"
echo " By ePreneurs"
echo "=========================================="
echo ""

echo "[1/4] Checking Python installation..."
if ! command -v python3 &> /dev/null; then
    echo "ERROR: Python3 is not installed!"
    echo "Install with: brew install python3 (Mac) or sudo apt install python3 (Linux)"
    exit 1
fi
echo "Python found: $(python3 --version)"
echo ""

echo "[2/4] Installing uv package manager..."
pip3 install uv
echo ""

echo "[3/4] Installing NotebookLM MCP server..."
uv pip install notebooklm-mcp
echo ""

echo "[4/4] Running authentication..."
echo ""
echo "IMPORTANT:"
echo "1. A browser window will open"
echo "2. Sign OUT of NotebookLM first if already signed in"
echo "3. Then sign in with your Google account"
echo "4. Authentication will complete automatically"
echo ""
notebooklm-mcp-auth

echo ""
echo "=========================================="
echo " Setup Complete!"
echo ""
echo " Next Steps:"
echo " 1. Add the MCP config to AntiGravity/Claude Desktop"
echo " 2. Check that NotebookLM MCP is GREEN"
echo " 3. Test with: 'List my notebooks'"
echo "=========================================="
