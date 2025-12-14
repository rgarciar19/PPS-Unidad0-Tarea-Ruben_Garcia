# ⚙️ Fase 2: Creación de WorkFlow de GitHub Actions

Para automatizar la generación de la documentación cada vez que se sube un cambio a la rama `main` del repositorio, se creó un flujo de trabajo (WorkFlow) de GitHub Actions. Esto elimina la necesidad de ejecutar `mkdocs gh-deploy` manualmente.

## 1. Archivo del WorkFlow

El WorkFlow se define en el archivo **`.github/workflows/CreacionDocumentacion.yml`**. Este archivo se configura para que se ejecute en un contenedor basado en Ubuntu cuando se detecte un `push` a la rama `main`.

### Contenido de `CreacionDocumentacion.yml`

```yaml
name: Publicar Documentacion MkDocs

on:
  push:
    branches:
      - main
      - master

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout del repositorio
        uses: actions/checkout@v4
        
      - name: Configurar Python
        uses: actions/setup-python@v5
        with:
          python-version: 3.x 

      - name: Instalar dependencias
        run: pip install -r requirements.txt
        
      - name: Implementar MkDocs a GitHub Pages
        run: mkdocs gh-deploy --force --clean --message "Build automático desde GitHub Actions"
