lint: ## ejecuta analisis con lint
	golangci-lint run

build: ## Compila el codigo fuente de la aplicacion en awesome-api
	make lint
	go build

run: ## Ejecuta en segundo plano el archivo awesome-api
	./awesome-api >./awesome.log 2>&1 &

stop: ## Detiene la aplicacion
	kill $$(pgrep -f "awesome-api") > /dev/null 2>&1 &

.PHONY: clean
clean: ## Elimina los archivos awesome-api y awesome.log
	make stop > /dev/null 2>&1 &
	rm -rf ./awesome-api ./awesome.log > /dev/null 2>&1 &

test: ## Realiza un test para comprobar que la aplicacion hace lo que debe hacer
	curl http://localhost:9999
	curl http://localhost:9999/health

help: ## Muestra la descripcion de las tareas del make
	grep '##' ./Makefile  | sed 's/ ##/ /' |  head -n -1

