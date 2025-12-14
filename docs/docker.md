# 🐳 Fase 4: Contenerización con Docker y NGINX

Esta fase demuestra la capacidad de crear una imagen de Docker que sirva la documentación estática generada por MkDocs a través del servidor web NGINX. Esto asegura que la documentación pueda ser ejecutada de forma aislada y portable en cualquier entorno que soporte Docker.

## 1. Archivo Dockerfile

Para la contenerización, se ejecutó `mkdocs build` para generar los archivos HTML estáticos en la carpeta `site/`. Posteriormente, se creó el `Dockerfile` en la raíz del repositorio, utilizando la imagen ligera de NGINX (`nginx:alpine`) como base para optimizar el tamaño.

### Contenido de `Dockerfile`
```dockerfile
# Uso de la imagen oficial de NGINX, versión ligera (Alpine Linux)
FROM nginx:alpine

# Copia el contenido de la carpeta 'site/' (documentación HTML estática) 
# al directorio de publicación de NGINX dentro del contenedor.
COPY site/ /usr/share/nginx/html
