# DCU IEEE MCM LaTeX Template

This is a modern, structured LaTeX template based on the IEEE 2-column paper format. It was originally used for a practicum at Dublin City University (DCU) in 2023/2024.

## Quick Start

1. **Option 1: Overleaf (Recommended)**
   - Upload the project files to [Overleaf](https://www.overleaf.com/).
   - Set the main document to `conference-paper.tex`.

2. **Option 2: Docker / Nerdctl / Podman**
   - Ensure Docker (or compatible runtime) is installed.
   - Run `make docker-build`.
   - *Note: If you use `nerdctl` or `podman`, run: `make docker-build DOCKER_CMD=nerdctl`*

3. **Option 3: Local LaTeX**
   - Ensure you have a TeX distribution (e.g., TeX Live, MiKTeX) installed.
   - Run `make build`.

## Project Structure

- `conference-paper.tex`: Main document entry point.
- `authors.tex`: Author information configuration.
- `sections/`: Individual LaTeX files for each section of the paper.
- `bibliography/`: BibTeX references.
- `assets/`: Place your images and figures here.
- `lib/`: Contains the IEEEtran class file.

## Features

- **Automated Builds**: Includes a `Makefile` and `Dockerfile` for easy compilation.
- **Modern Packages**: Pre-configured with `hyperref`, `booktabs`, and `microtype`. 
  - *Note: These can be deactivated in `conference-paper.tex` if they interfere with specific format compliance.*
- **Organized Structure**: Modular section-based design for easier collaboration.

## Contributing

Feel free to fork this repository and use it for your own research or practicum. Improvements and suggestions are always welcome!
