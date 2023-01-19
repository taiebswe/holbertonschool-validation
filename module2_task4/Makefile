help:	## Show this
	@sed -ne '/@sed/!s/## //p' Makefile

build:	## Generate the website from the markdown language
	@make check >/dev/null 2>&1 && hugo || exit -1

clean:	## Delete the website done with build command
	@rm -rf dist/

post:	## Create a new blog post from the environment variables POST_TITLE and POST_NAME
	@hugo new posts/$(POST_NAME).md
	@sed -i 's#title: ".*"#title: "$(POST_TITLE)"#g' content/posts/$(POST_NAME).md

check: ## Lint of the Markdown source && the Analysis of the links
	@markdownlint content/*/*.md
	@markdown-link-check content/*/*.md

validate: ## W3C validator for Holberton School
	@make build
	@./w3c_validator.py ./dist/index.html || true