.DEFAULT_GOAL := help
REPO = "Why Julia?"

compile: ## Compile this document.
	tectonic -X compile main.tex -Z shell-escape

# Automatically generate help for this Makefile.
help: ## Print this help message.
	@echo "Makefile help for ${REPO}"
	@echo "---------------------------------------------"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: compile help
