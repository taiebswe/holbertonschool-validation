help:	## Show this
	@sed -ne '/@sed/!s/## //p' Makefile

build:	## Generate the website from the markdown language
	curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb -o hugo.deb
	apt install ./hugo.deb 2>/dev/null
	rm hugo.deb
	@make check
	@hugo

clean:	## Delete the website done with build command
	@rm -rf dist/

post:	## Create a new blog post from the environment variables POST_TITLE and POST_NAME
	@hugo new posts/$(POST_NAME).md
	@sed -i 's#title: ".*"#title: "$(POST_TITLE)"#g' content/posts/$(POST_NAME).md

check: ## Lint of the Markdown source && the Analysis of the links
	@markdownlint content/*/*
	@markdown-link-check content/*/*

validate: ## W3C validator for Holberton School
	@make build
	@./w3c_validator.py dist/index.html || true