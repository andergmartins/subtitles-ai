.PHONY: install

install:
	@if ! command -v brew >/dev/null 2>&1; then \
		/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; \
	fi
	@if ! command -v curl >/dev/null 2>&1; then \
		brew install curl; \
	fi
	@if ! command -v jq >/dev/null 2>&1; then \
		brew install jq; \
	fi
	@chmod +x subai
	@if [ ! -f .env ]; then \
		read -p "Enter your OpenAI API key: " api_key; \
		echo "OPENAI_API_KEY=$$api_key" > .env; \
		echo "API key stored in .env file"; \
	else \
		read -p "Update existing API key? [y/N] " update; \
		if [ "$$update" = "y" ] || [ "$$update" = "Y" ]; then \
			read -p "Enter your new OpenAI API key: " api_key; \
			echo "OPENAI_API_KEY=$$api_key" > .env; \
			echo "API key updated in .env file"; \
		fi \
	fi
	@echo "subai configured successfully"
