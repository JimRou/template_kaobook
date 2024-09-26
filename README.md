Physics lesson template of [femto-physique.fr](https://femto-physique.fr)
========================

> A LaTeX / LuaLaTeX / XeLaTeX template in kaobook style for physics courses used for my website 

## Author(s)
*   Jimmy Roussel

---
## Features

* Supports LaTeX, LuaLaTeX and XeLaTeX 

* uses Kaobook class 

* Wide margin to house captions, small figures or tables, and textual notes.

* Mini table of contents in the margin at the start of each chapter.

* Easily-customisable chapter headings.

* Flexible citations with references both in the margin and in the bibliography at the end.

* Powered by KOMA-Script.

* Many commands have been redefined to ease the life of the user.

A better description can be found at [LaTeX 
Templates](http://www.latextemplates.com/template/kaobook). If you think 
that a PDF is worth a thousand words, have a look at [this](https://github.com/fmarotta/kaobook/blob/master/example_and_documentation.pdf).



---

## Building your PDF

### using XeLaTex engine

This template supports `XeLaTeX` compilation chain. To generate  PDF run

    latexmk -xelatex template_femto.tex
    makeindex template_femto.nlo -s nomencl.ist -o template_femto.nls
    latexmk -xelatex -g template_femto.tex



### using LuaLaTeX engine

This template supports `LuaLaTeX` compilation chain. To generate  PDF run

    latexmk -pdflatex=lualatex -pdf template_femto.tex


### using PDFLaTeX

	pdflatex template_femto.tex
	biber template_femto
	pdflatex template_femto.tex
	pdflatex template_femto.tex

### Shell script for PDFLaTeX

Usage: `sh ./compile_cours.sh [OPTIONS] [filename]`

[option]  pdflatex: Compiles the filename.tex using pdflatex

[option]  lualatex: Compiles the filename.tex using lualatex

[option]  xelatex: Compiles the filename.tex with xelatex

[option]  clean: removes temporary files - no filename required


---


## Inspirations/Based on

*   Kaobook class [https://github.com/fmarotta/kaobook](https://github.com/fmarotta/kaobook)

---









