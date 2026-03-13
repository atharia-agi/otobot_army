#!/bin/bash
#
# OTOBOT - Ultra Simple Install
# Just needs Python 3.11+
#
# Usage: curl -sSL https://git.io/otobot | bash
#

set -e

echo "🤖 Otobot Army - Quick Install"
echo "================================"

# Check Python
command -v python3 >/dev/null 2>&1 || { echo "❌ Python3 required"; exit 1; }

# Get script directory
DIR="${HOME}/.otobot"
mkdir -p "$DIR"

# Download main file
echo "📥 Downloading Otobot..."
curl -sSL "https://raw.githubusercontent.com/atharia-agi/otobot_army/main/otobot_army_v8.py" -o "$DIR/otobot.py"

# Make executable
chmod +x "$DIR/otobot.py"

# Create alias
ALIAS_LINE="alias otobot='python3 $DIR/otobot.py'"

# Add to bashrc if not exists
if ! grep -q "otobot.py" ~/.bashrc 2>/dev/null; then
    echo "$ALIAS_LINE" >> ~/.bashrc
fi

echo ""
echo "✅ INSTALLED!"
echo ""
echo "Run with: otobot"
echo ""
echo "Set API key: export API_KEY='your-key'"
