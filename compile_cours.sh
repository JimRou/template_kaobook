#!/bin/bash
# A script to compile latex book - Jimmy Roussel 
# Inspired by script Krishna Kumar : https://github.com/kks32/phd-thesis
# Distributed under GPLv2.0 License

compile1="pdflatex";
compile2="lualatex";
compile3="xelatex";
clean="clean";

if test -z "$2"
then
if [ $1 = $clean ]; then
	echo "Cleaning please wait ..."
	rm -f *~
	rm -rf *.aux
	rm -rf *.bbl
	rm -rf *.bcf
	rm -rf *.blg
	rm -rf *.d
	rm -rf *.fdb*
	rm -rf *.fls
	rm -rf *.ilg
	rm -rf *.ind
	rm -rf *.toc*
	rm -rf *.lot*
	rm -rf *.lof*
	rm -rf *.log
	rm -rf *.idx
	rm -rf *.idx
	rm -rf *.mw
	rm -rf *.nlo
	rm -rf *.nls
	rm -rf *.run*
	rm -rf *.xdv
	rm -rf $filename.ps
	rm -rf $filename.dvi
	rm -rf *#* 
	echo "Cleaning complete!"
	exit
else
	echo "Shell script for compiling the PhD Thesis"
	echo "Usage: sh ./compile-cours.sh [OPTIONS] [filename]"
	echo "[option]  pdflatex : Compiles with pdflatex engine"
	echo "[option]  lualatex : Compiles with lualatex engine"
	echo "[option]  xelatex : Compiles with xelatex engine"
	echo "[option]  clean: removes temporary files no filename required"
	exit
fi
fi

filename=$2;

if [ $1 = $clean ]; then
	echo "Cleaning please wait ..."
	rm -f *~
	rm -rf *.aux
	rm -rf *.bbl
	rm -rf *.bcf
	rm -rf *.blg
	rm -rf *.d
	rm -rf *.fdb*
	rm -rf *.fls
	rm -rf *.ilg
	rm -rf *.ind
	rm -rf *.toc*
	rm -rf *.lot*
	rm -rf *.lof*
	rm -rf *.log
	rm -rf *.idx
	rm -rf *.idx
	rm -rf *.mw
	rm -rf *.nlo
	rm -rf *.nls
	rm -rf *.run*
	rm -rf *.xdv
	rm -rf $filename.ps
	rm -rf $filename.dvi
	rm -rf *#* 
	echo "Cleaning complete!"
	exit
elif [ $1 = $compile1 ]; then
	echo "Compiling using PDFLatex...please wait...!"
	pdflatex -interaction=nonstopmode $filename.tex
	bibtex $filename.aux 	
	makeindex $filename.aux
	makeindex $filename.idx
	makeindex $filename.nlo -s nomencl.ist -o $filename.nls
	pdflatex -interaction=nonstopmode $filename.tex
	makeindex $filename.nlo -s nomencl.ist -o $filename.nls
	pdflatex -interaction=nonstopmode $filename.tex
	echo "Success!"
	exit
elif [ $1 = $compile3 ]; then
	echo "Compiling using XeLaTeX...please wait...!"
    latexmk -xelatex $filename.tex
    makeindex $filename.nlo -s nomencl.ist -o $filename.nls
    latexmk -xelatex -g $filename.tex
	echo "Success!"
	exit
fi


if test -z "$3"
then
	exit
fi