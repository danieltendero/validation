build: ## Generar sitio web en el directorio dist/
	hugo -D > /dev/null 2>&1

.PHONY: clean
clean: ## limpiar el contenido del directorio dist/
	rm -rf ./dist/ /dev/null 2>&1

post: ## crear nueva publicacion de blog con el nombre y titulo  que provengan de las variables POST_NAME y POST_TITLE
	hugo new posts/$(POST_NAME).md 
	echo '--- \ntitle: "$(POST_TITLE)"\ndate: 2022-01-20T08:47:25+01:00 \ndraft: false\n---' > ./content/posts/$(POST_NAME).md

check: ## should fail when one of the 2 following steps fails:Lint of the Markdown source files using the command line "markdownlint-cli" Analysis of the links with the command line "markdown-link-check"	markdownlint /content/posts/*  &&  markdown-link-check ./content/posts/* && echo 'SUCCESS' || echo 'FAIL' || echo 'FAIl'
	markdownlint ./content/posts/welcome.md >/dev/null 2>&1 &&  markdown-link-check -q ./content/posts/welcome.md >/dev/null 2>&1
          
			


validate: ## should validate the file ./dist/index.html by using the command line Holberton's W3C Validator, but should not fail if the file is not valid: you expect it to be a non-blocking quality indicator.
	/home/daniel/W3C-Validator/w3c_validator.py ./dist/index.html > /dev/null 2>&1 || true;	
help: ## Muestra uns descripcion de cada comando make
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

