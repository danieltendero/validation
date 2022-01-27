## Prerequisites

Necesitas Hugo 0.80
Mozilla, Chrome o Edge


## Lifecycle

Cuenta con 5 etapas:
### build step:
    Generar sitio web en el directorio dist/

### clean step:
    limpiar el contenido del directorio dist/

### post step:
    crear nueva publicacion de blog con el nombre y titulo  que provengan de las variables POST_NAME y POST_TITLE

### check: 
    comprueba que no haya enlances muertos y el Markdown este bien escrito

### validate: 
    valida el archivo index.html de la carpeta dist con el w3c-validatos

### help:
    Muestra uns descripcion de cada comando make

