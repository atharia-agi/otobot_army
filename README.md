# 🤖 Otobot Army

**The Autonomous Agent Army for Everyone**

<p align="center">
  <img src="https://img.shields.io/badge/version-8.0.0-blue" alt="Version">
  <img src="https://img.shields.io/badge/python-3.11+-green" alt="Python">
  <img src="https://img.shields.io/badge/license-MIT-orange" alt="License">
</p>

---

## 🚀 Quick Install (One Command!)

### Option 1: Direct Download (Any OS with Python)

```bash
# Download and run directly
curl -sSL https://raw.githubusercontent.com/atharia-agi/otobot_army/main/otobot_army_v8.py -o otobot.py && python3 otobot.py
```

### Option 2: With API Key

```bash
# Set API key and run
export API_KEY="your-api-key"
python3 otobot.py
```

### Option 3: Clone & Run

```bash
# Clone repository
git clone https://github.com/atharia-agi/otobot_army.git
cd otobot_army

# Run
python3 otobot_army_v8.py
```

---

## 📋 Requirements

- Python 3.11+
- `requests` library

```bash
pip install requests
```

---

## ⚙️ Configuration

### Set API Key

```bash
# Option 1: Environment variable
export API_KEY="your-api-key"

# Option 2: Create .env file
echo "API_KEY=your-key" > .env
```

### Supported Providers

Otobot auto-detects available LLM providers:

1. **Ollama** (local, free) - Set `OLLAMA_URL`
2. **MiniMax** - Set `MINIMAX_API_KEY` or `API_KEY`
3. **OpenAI** - Set `OPENAI_API_KEY`
4. **Anthropic** - Set `ANTHROPIC_API_KEY`

---

## 💻 Usage

### Interactive Mode

```bash
python3 otobot_army_v8.py
```

### Command Line

```bash
# Research
python3 otobot_army_v8.py research "latest AI news"

# Write content
python3 otobot_army_v8.py write "article about blockchain"

# Analyze
python3 otobot_army_v8.py analyze market trends

# Status
python3 otobot_army_v8.py status
```

---

## 🎯 Features

### 👥 15 Specialized Agents

| Agent | Role | Capabilities |
|-------|------|---------------|
| Aurora | Research | search, fetch, analyze |
| Cipher | Coder | code, debug, deploy |
| Nova | Creator | create, design, generate |
| Pulse | Analyst | analyze, visualize, report |
| Quark | Trader | trade, market, invest |
| Shield | Security | scan, audit, protect |
| Spark | Social | post, engage, schedule |
| Ink | Writer | write, edit, proofread |
| Nexus | Manager | coordinate, delegate |
| + 6 more | Various | Various |

### 🛠️ 50+ Tools

- **Web**: search, fetch, status
- **File**: read, write, append
- **Data**: parse, analyze, calculate
- **Social**: Twitter, Mastodon, Email
- **System**: run, info, health

### 🧠 LLM Integration

- Auto-detect available provider
- Support for Ollama, MiniMax, OpenAI, Anthropic
- Fallback to simulation mode

### 🛡️ Security

- Permission levels
- Emergency stop
- Command logging
- Anti-coup system

---

## 📖 Commands

```
status              - Show army status
task <description> - Assign task to best agent
chat <agent> <msg> - Message an agent
broadcast <msg>    - Message all agents
learn <topic>     - Add to knowledge
recall <query>     - Search knowledge
help               - Show all commands
stop               - Emergency stop (Commander)
```

---

## 🔧 API Keys

Get free API keys:

- **MiniMax**: https://platform.minimaxi.com
- **OpenAI**: https://platform.openai.com
- **Anthropic**: https://console.anthropic.com
- **Ollama**: https://ollama.ai (local, free)

---

## 📦 Files

```
otobot_army_v8.py     - Main version (recommended)
otobot_army_v7.py   - Previous version
otobot_army_v6.py   - Legacy version
config_template.py   - Configuration template
README.md           - This file
MANIFESTO.md        - Vision & mission
TECHNICAL_SPEC.md    - Technical details
HONEST_BENCHMARK.md  - Competitor analysis
```

---

## 🌐 Resources

- **GitHub**: https://github.com/atharia-agi/otobot_army
- **License**: MIT
- **Price**: Free forever

---

## 🤝 Contributing

1. Fork the repo
2. Make changes
3. Submit PR

---

## 📝 License

MIT License - See LICENSE file

---

*Otobot Army - Your Autonomous Agent Team*
