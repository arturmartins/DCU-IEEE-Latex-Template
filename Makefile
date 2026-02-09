MAIN=conference-paper
LATEX=pdflatex
BIBTEX=bibtex
DOCKER_CMD=docker

all: build

build:
	@command -v $(LATEX) >/dev/null 2>&1 || { echo >&2 "Error: $(LATEX) is not installed. Please install LaTeX or run 'make docker-build' to use Docker."; exit 1; }
	$(LATEX) $(MAIN)
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf *.toc *.fdb_latexmk *.fls *.synctex.gz *.bcf *.run.xml

docker-build:
	$(DOCKER_CMD) build -t dcu-ieee-template .
	$(DOCKER_CMD) run --rm -v $(PWD):/workdir dcu-ieee-template

.PHONY: all build clean docker-build
