help: ## Muestra la descripcion de las tareas del make
	grep '##' ./Makefile  | sed 's/ ##/ /' |  head -n -1

build: ## Compila el codigo fuente de la aplicacion en awesome-api
	go build

.PHONY: clean
clean: ## Elimina los archivos awesome-api y awesome.log
	make stop > /dev/null 2>&1 &
	rm -rf ./awesome-api ./awesome.log > /dev/null 2>&1 &
run: ## Ejecuta en segundo plano el archivo awesome-api
	./awesome-api >./awesome.log 2>&1 &

stop: ## Detiene la aplicacion
	kill $$(pgrep -f "awesome-api") > /dev/null 2>&1 &

test: ## Realiza un test para comprobar que la aplicacion hace lo que debe hacer
	curl http://localhost:9999
	curl http://localhost:9999/health

