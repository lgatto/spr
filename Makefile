setvars:
ifeq (${R_HOME},)
R_HOME= $(shell R RHOME)
endif


all: spr spr-4up.pdf fib fibonacci-4up.pdf spr.R fib.R rr


spr.pdf: spr.Rnw
	Rscript -e "knitr::knit2pdf('spr.Rnw')"

spr:
	"$(R_HOME)/bin/R" --vanilla -e "library(knitr); knit2pdf('spr.Rnw');"
	pdflatex spr.tex

fib:
	"$(R_HOME)/bin/R" --vanilla -e "library(knitr); knit2pdf('fibonacci.Rnw');"
	pdflatex fibonacci.tex

%-4up.pdf: %.pdf
	pdfjam -q --nup 2x2 --suffix '4up' $<

spr.R:
	R --vanilla -e 'Stangle("spr.Rnw")'

fib.R:
	R --vanilla -e 'Stangle("fibonacci.Rnw")'

clean:
	rm -f *.dvi *.aux *.log *.nav *.out *.snm *.toc *~ *vrb 
	rm -f */*~
	rm -f rr.tex
	rm -rf figure cache
	rm -f hist.pdf hist.png
	rm -f spr.tex rr.tex fibonacci.tex
	rm -f spr.pdf


rr.pdf: rr.md
	pandoc -r markdown+simple_tables -t beamer --slide-level=2 --standalone -H rr-preamble.tex rr.md -o rr.pdf

rr.tex: rr.md
	pandoc -r markdown+simple_tables -t beamer --slide-level=2 --standalone -H rr-preamble.tex rr.md -o rr.tex

from-R-to-julia.html: from-R-to-julia.Rmd test.jl
	Rscript -e "rmarkdown::render('from-R-to-julia.Rmd')"
