all: estimatek.pdf clean

estimatek.pdf: estimatek.Rnw
	Rscript -e 'knitr::knit2pdf("estimatek.Rnw")'

clean:
	rm -f estimatek.pdf
	rm -rf figure




