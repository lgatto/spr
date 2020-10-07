all: estimatek estimate clean

setvars:
ifeq (${R_HOME},)
R_HOME= $(shell R RHOME)
endif


estimatek.pdf: estimatek.Rnw
	"$(R_HOME)/bin/R" --vanilla -e "library(knitr); knit2pdf('estimatek.Rnw');"


estimate:
	"$(R_HOME)/bin/R" CMD Sweave estimate.Rnw
	pdflatex estimate.tex

clean:
	rm -f *.dvi *.aux *.log *.nav *.out *.snm *.toc *~ *vrb 
	rm -f estimate.tex estimatek.tex
	rm -f estimate-0*pdf
	rm -rf figure
	rm -f estimatek.pdf


allclean: clean
	rm -f estimate.pdf estimatek.pdf

