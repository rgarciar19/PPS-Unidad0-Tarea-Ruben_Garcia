# Usa la imagen oficial de NGINX (version ligera) como base
FROM nginx:alpine

# Copia los archivos estáticos generados por mkdocs build 
# al directorio por defecto de publicación de NGINX.
COPY site/ /usr/share/nginx/html
