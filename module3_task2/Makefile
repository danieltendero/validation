build-hugo: ## Generar sitio web en el directorio dist/
	hugo -D > /dev/null 2>&1

post: ## crear nueva publicacion de blog con el nombre y titulo  que provengan de las variables POST_NAME y POST_TITLE
	hugo new posts/$(POST_NAME).md 
	echo '--- \ntitle: "$(POST_TITLE)"\ndate: 2022-01-20T08:47:25+01:00 \ndraft: false\n---' > ./content/posts/$(POST_NAME).md

check: ## comprueba que no haya enlances muertos y el Markdown este bien escrito
	markdownlint ./content/posts/welcome.md >/dev/null 2>&1
	markdown-link-check ./content/posts/welcome.md >/dev/null 2>&1
	
validate: ## valida el archivo index.html de la carpeta dist con el w3c-validatos
	./W3C-Validator/w3c_validator.py ./dist/index.html > /dev/null 2>&1 || true
	
help: ## Muestra uns descripcion de cada comando make
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)



build: ## ejcuta los build de go y hugo
	make build-hugo
	make build-go

.PHONY: clean	
clean: ## Elimina los archivos awesome-api, awesome.log y el directorio dist/
	make stop > /dev/null 2>&1 &
	rm -rf ./awesome-api ./awesome.log ./dist/ > /dev/null 2>&1 &
	rm ./coverage-integrations.out
	rm ./coverage-units.out
	


integration-tests: ## ejecutar pruebas de integracion del proyecto
	go test -v -coverprofile=coverage-integrations.out

unit-tests: ## ejecutas las pruebas unitarias del proyecto
	go test -v -short -coverprofile=coverage-units.out

lint: ## ejecuta analisis con lint
	golangci-lint run
	shellcheck setup.sh >/dev/null 2>&1 || echo "Lint Failed"

build-go: ## Compila el codigo fuente de la aplicacion en awesome-api
	go build

run: ## Ejecuta en segundo plano el archivo awesome-api
	./awesome-api >./awesome.log 2>&1 &

stop: ## Detiene la aplicacion
	kill $$(pgrep -f "awesome-api") > /dev/null 2>&1 &	

test: ## Realiza un test para comprobar que la aplicacion hace lo que debe hacer
	make unit-tests

package: ## comprimir proyecto
	zip -r proyectoComprimido.zip awesome-api dist/*




