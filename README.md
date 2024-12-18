# OpenAI ChatGPT CLI Assistant

## Prerequisites
- `curl`
- `jq` (JSON processor)
- OpenAI API Key

## Setup
1. Install dependencies
```bash
# On Ubuntu/Debian
sudo apt-get install curl jq

# On macOS with Homebrew
brew install curl jq
```

2. Create a .env file in the project root
```bash
echo "OPENAI_API_KEY=your_openai_api_key_here" > .env
```

3. Make sure to add .env to your .gitignore

## Usage
```bash
# Basic usage
./subai input.txt

# Specify a different model
./subai input.txt gpt-4

# Example input.txt
What are the top 3 programming languages to learn in 2024?
```

## Features
- Simple CLI interface
- Supports file-based input
- Flexible model selection
- Error handling
- Colorized output

## Permissions
```bash
chmod +x subai
```

## Notes
- Requires an active OpenAI API key
- Max response length: 500 tokens
- Uses system prompt for consistent behavior
