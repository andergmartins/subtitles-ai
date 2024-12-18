# OpenAI ChatGPT CLI Assistant

## Prerequisites

- OpenAI API Key
- `curl`
- `jq` (JSON processor)
- Homebrew (for macOS users)

## Setup

1. Install dependencies

```bash
make install
```

## Usage

```bash
# Basic usage
./subai input.txt

# Specify a different output file
./subai input.txt output.txt

# Specify a different Open AI model (default: gpt-4o-mini)
./subai input.txt output.txt gpt-4o
```

## Permissions

```bash
chmod +x subai
```
## Customize prompt

Edit the prompt.txt file to customize the prompt.
