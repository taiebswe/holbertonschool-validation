help: ## Show this
	@sed -ne '/@sed/!s/## //p' Makefile

build: ## Generate the website from the markdown language
	@make lint >/dev/null 2>&1 && go build || exit -1

run: ## Runs the program
	@./awesome-api >./awesome.log 2>&1 &

stop: ## Kills awesome-api's current process
	@kill "$(shell pgrep awesome-api)" 2>/dev/null &

clean: ## Delete the binary done with build command
	@make -s stop
	@rm awesome-api awesome.log >/dev/null 2>&1 &

test: ## Tests if the website is currently running properly
	@curl http://localhost:9999 &
	@curl http://localhost:9999/health 

lint: ## Helps to make a lint on the files
	@golangci-lint run

unit-tests: ## Runs the unit test on the project
	@go test -v -short -coverprofile=coverage-units.out || echo $1

deploy: ## Deploys the app
	@make -s stop && make clean && make build && make run
	@make unit-tests && go tool cover -func=coverage-units.out