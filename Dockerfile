FROM registry.hub.docker.com/texlive/texlive:latest

WORKDIR /workdir

# Install any additional dependencies if needed
# RUN apt-get update && apt-get install -y ...

CMD ["pdflatex", "conference-paper.tex"]
