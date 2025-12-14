# 🐳 Fase 4: Contenerización con Docker y NGINX

Esta fase demuestra la capacidad de crear una imagen de Docker que sirva la documentación estática generada por MkDocs a través del servidor web NGINX. Esto permite que la documentación se ejecute de forma aislada y portable, lista para un entorno de producción.

## 1. Archivo Dockerfile

Se generaron los archivos estáticos de la documentación con el comando `mkdocs build`. Luego, se creó el archivo `Dockerfile` en la raíz del repositorio, utilizando la imagen ligera de NGINX (`nginx:alpine`) para reducir el tamaño de la imagen final.

### Contenido de `Dockerfile`
```dockerfile
# Se usa la imagen oficial de NGINX, versión ligera (Alpine Linux)
FROM nginx:alpine

# Se copia el contenido de la carpeta 'site/' (documentación HTML estática) 
# al directorio de publicación de NGINX dentro del contenedor.
COPY site/ /usr/share/nginx/html<<
