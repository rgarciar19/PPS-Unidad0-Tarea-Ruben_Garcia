# 🐳 Fase 4: Contenerización con Docker y NGINX

Esta fase demuestra la capacidad de crear una imagen de Docker que sirva la documentación estática a través del servidor web NGINX.

## 1. Archivo Dockerfile

Se generaron los archivos estáticos de la documentación con `mkdocs build`. Luego, se creó el `Dockerfile` en la raíz del repositorio, utilizando la imagen ligera de NGINX.

### Contenido de `Dockerfile`
```dockerfile
FROM nginx:alpine
COPY site/ /usr/share/nginx/html
