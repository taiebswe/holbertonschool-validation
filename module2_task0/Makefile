help: ## Show this
	@sed -ne '/@sed/!s/## //p' Makefile

build: ## Generate the website from the markdown language
	@go build

run: ## Runs the program
	@./awesome-api >./awesome.log 2>&1 &

stop: ## Kills awesome-api's current process
	@kill $(shell pgrep awesome-api)

clean: ## Delete the binary done with build command
	@make stop
	@rm awesome-api awesome.log 

test: ## Tests if the website is currently running properly
	@curl http://localhost:9999 &
	@curl http://localhost:9999/health 