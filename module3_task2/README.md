## Prerequisites

Necesitas Hugo 0.80
Mozilla, Chrome o Edge


## Lifecycle

Cuenta con 5 etapas:
### build-hugo step:
    Generar sitio web en el directorio dist/ 

### clean step:
    Elimina los archivos awesome-api, awesome.log y el directorio dist/

### post step:
    crear nueva publicacion de blog con el nombre y titulo  que provengan de las variables POST_NAME y POST_TITLE

### check: 
    comprueba que no haya enlances muertos y el Markdown este bien escrito

### validate: 
    valida el archivo index.html de la carpeta dist con el w3c-validatos

### build step: 
	ejcuta los build de go y hugo

### integration-tests: 
    ejecutar pruebas de integracion del proyecto

### unit-tests step:
    Ejecutas las pruebas unitarias del proyecto

### lint step:
    Ejecuta analisis con lint
    
### Workflow:
    clona repositorio y prueba make help
    
### Build Workflow:
    construir workflow
    
### build-go step:
    Compila el codigo fuente de la aplicacion en awesome-api

### run step:
    Ejecuta en segundo plano el archivo awesome-api
    
### Test step:
    Realiza un test para comprobar que la aplicacion hace lo que debe hacer

### stop step:
    Detiene la aplicacion

### help:
    Muestra uns descripcion de cada comando make

### package:
    asdasdasd

