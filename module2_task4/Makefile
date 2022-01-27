help: ## Muestra uns descripcion de cada comando make
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

build: ## Generar sitio web en el directorio dist/
	hugo -D > /dev/null 2>&1

.PHONY: clean
clean: ## limpiar el contenido del directorio dist/
	rm -rf ./dist/ /dev/null 2>&1

post: ## crear nueva publicacion de blog con el nombre y titulo  que provengan de las variables POST_NAME y POST_TITLE
	hugo new posts/$(POST_NAME).md 
	echo '--- \ntitle: "$(POST_TITLE)"\ndate: 2022-01-20T08:47:25+01:00 \ndraft: false\n---' > ./content/posts/$(POST_NAME).md

check: ## comprueba que no haya enlances muertos y el Markdown este bien escrito
	markdownlint ./content/posts/welcome.md >/dev/null 2>&1 && markdown-link-check ./content/posts/welcome.md >/dev/null 2>&1
	
validate: ## valida el archivo index.html de la carpeta dist con el w3c-validatos
	/home/daniel/W3C-Validator/w3c_validator.py ./dist/index.html > /dev/null 2>&1 || true;
