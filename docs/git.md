# 💻 Fase 1: Creación y Estructura del Repositorio

## 1. Creación en GitHub y Colaboradores

Se creó el repositorio en GitHub con el nombre `PPS-Unidad0-Tarea-Ruben_Garcia` con licencia MIT. Para cumplir con el criterio de evaluación, se añadió al profesor **PPSvJp** como colaborador del repositorio, como se muestra en la configuración:

![Captura de pantalla de la configuración de colaboradores en GitHub](img/colaborador_github.png)

## 2. Configuración Local y Estructura de Directorios

Se clonó el repositorio en la máquina Kali Linux y se generó la estructura de directorios necesaria (`calculator/`, `docs/`, `.github/workflows/`) y los archivos de MarkDown y configuración (`mkdocs.yml`, `requirements.txt`).

```bash
# Comandos de creación de estructura
mkdir -p calculator docs .github/workflows
touch calculator/__init__.py calculator/gui.py
touch docs/index.md docs/git.md docs/gitActions.md docs/gitPages.md docs/docker.md docs/conclusiones.md
touch mkdocs.yml requirements.txt .github/workflows/CreacionDocumentacion.yml
# Comando de verificación
tree -L 2# 💻 Fase 1: Creación y Estructura del Repositorio

## 1. Creación en GitHub

Se creó el repositorio en GitHub con el nombre `PPS-Unidad0-Tarea-Ruben_Garcia` incluyendo una licencia MIT. [cite_start]Se añadió al profesor como colaborador siguiendo la instrucción. [cite: 21, 23]
[Imagen de la configuración de colaboradores en GitHub]

## 2. Configuración Local y Estructura de Directorios

[cite_start]El repositorio fue clonado y se creó la estructura de archivos y directorios necesaria, tal como se define en las instrucciones. [cite: 28]

```bash
# Clonación del repositorio
git clone [https://github.com/RubenGarcia/PPS-Unidad0-Tarea-Ruben_Garcia.git](https://github.com/RubenGarcia/PPS-Unidad0-Tarea-Ruben_Garcia.git)
cd PPS-Unidad0-Tarea-Ruben_Garcia

# Creación de la estructura de carpetas
mkdir -p calculator docs .github/workflows
# Creación de archivos MarkDown y configuración
touch calculator/__init__.py calculator/gui.py
touch docs/index.md docs/git.md docs/gitActions.md docs/gitPages.md docs/docker.md docs/conclusiones.md
touch mkdocs.yml requirements.txt .github/workflows/CreacionDocumentacion.yml
