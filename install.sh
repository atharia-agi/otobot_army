#!/bin/bash
#
# OTOBOT ARMY - One-Line Installer
# Works on Linux, macOS, Windows (WSL/Cygwin)
#
# Usage:
#   curl -sSL https://raw.githubusercontent.com/atharia-agi/otobot_army/main/install.sh | bash
#
# Or with API key:
#   curl -sSL https://raw.githubusercontent.com/atharia-agi/otobot_army/main/install.sh | API_KEY=your-key bash
#

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo ""
echo "🤖 Installing Otobot Army..."
echo "================================"

# Check Python
if ! command -v python3 &> /dev/null; then
    echo -e "${RED}Error: Python 3 is required but not installed.${NC}"
    echo "Install Python 3 from: https://python.org"
    exit 1
fi

PYTHON_VERSION=$(python3 -c 'import sys; print(sys.version_info[0]*10 + sys.version_info[1])')
if [ "$PYTHON_VERSION" -lt 311 ]; then
    echo -e "${RED}Error: Python 3.11+ required, found: $PYTHON_VERSION${NC}"
    exit 1
fi

echo -e "${GREEN}✓${NC} Python 3 detected"

# Check pip
if ! command -v pip3 &> /dev/null && ! python3 -m pip --version &> /dev/null; then
    echo -e "${RED}Error: pip is required but not installed.${NC}"
    exit 1
fi

echo -e "${GREEN}✓${NC} pip detected"

# Create virtual environment
VENV_DIR="otobot_env"
if [ ! -d "$VENV_DIR" ]; then
    echo "Creating virtual environment..."
    python3 -m venv "$VENV_DIR"
fi

# Activate virtual environment
source "$VENV_DIR/bin/activate"

echo -e "${GREEN}✓${NC} Virtual environment created"

# Upgrade pip
pip install --upgrade pip -q

# Install dependencies
echo "Installing dependencies..."
pip install requests -q

echo -e "${GREEN}✓${NC} Dependencies installed"

# Set API key if provided
if [ -n "$API_KEY" ]; then
    echo "export API_KEY='$API_KEY'" > .env
    echo -e "${GREEN}✓${NC} API_KEY configured"
else
    echo "# Set your API key:" > .env
    echo "# export API_KEY='your-api-key'" >> .env
    echo -e "${YELLOW}⚠${NC} API_KEY not set. Configure in .env file"
fi

# Create run script
cat > otobot.sh << 'EOF'
#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$DIR/otobot_env/bin/activate"
cd "$DIR"
python3 otobot_army_v8.py "$@"
EOF

chmod +x otobot.sh

echo ""
echo "================================"
echo -e "${GREEN}✅ Otobot Army Installed Successfully!${NC}"
echo "================================"
echo ""
echo "To run Otobot:"
echo "  ./otobot.sh"
echo ""
echo "To configure API key:"
echo "  nano .env"
echo ""
echo "For help:"
echo "  ./otobot.sh help"
echo ""
