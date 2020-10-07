all: estimatek.pdf clean

estimatek.pdf: estimatek.Rnw
	Rscript -e 'knitr::knit2pdf("estimatek.Rnw")'

estimatek.html: estimatek.Rmd
	Rscript -e 'rmarkdown::render("estimatek.Rmd")'

clean:
	rm -f estimatek.pdf
	rm -rf figure




