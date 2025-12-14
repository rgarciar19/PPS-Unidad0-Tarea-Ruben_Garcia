# 🐳 Fase 4: Contenerización con Docker y NGINX

Esta fase demuestra la capacidad de crear una imagen de Docker que sirva la documentación estática generada por MkDocs a través del servidor web NGINX. Esto permite que la documentación se ejecute de forma aislada y portable, lista para un entorno de producción.

## 1. Archivo Dockerfile

Se generaron los archivos estáticos de la documentación con el comando `mkdocs build`. Luego, se creó el archivo `Dockerfile` en la raíz del repositorio, utilizando la imagen ligera de NGINX (`nginx:alpine`) para reducir el tamaño de la imagen final.

### Contenido de `Dockerfile`

    # Se usa la imagen oficial de NGINX, versión ligera (Alpine Linux)
    FROM nginx:alpine

    # Se copia el contenido de la carpeta 'site/' (documentación HTML estática) 
    # al directorio de publicación de NGINX dentro del contenedor.
    COPY site/ /usr/share/nginx/html

## 2. Construcción de la Imagen

La imagen de Docker se construyó a partir del `Dockerfile` y se etiquetó con el nombre `docs-nginx:ruben_garcia`.

### Comando de Construcción
    docker build -t docs-nginx:ruben_garcia .

### Evidencia de Construcción Exitosa

![Captura de pantalla de la salida del comando docker build en la terminal.](img/mkdocs_serve.png)

## 3. Ejecución y Verificación Local

La imagen fue ejecutada en segundo plano, mapeando el puerto 80 del contenedor (donde NGINX escucha) al puerto 8080 de la máquina Kali host.

### Comando de Ejecución
    docker run -d -p 8080:80 --name tarea-pps docs-nginx:ruben_garcia

### Verificación del Servicio NGINX

Se accedió a la documentación a través de la dirección local `http://localhost:8080`, confirmando que NGINX está sirviendo correctamente los archivos de MkDocs contenidos en la imagen.

![Captura de pantalla del navegador mostrando la documentación servida en localhost.](img/https_localhost.png)
