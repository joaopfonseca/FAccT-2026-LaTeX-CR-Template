TEX = main
BIB = sample-base

.PHONY: $(TEX).pdf clean

$(TEX).pdf: $(TEX).tex $(BIB).bib acmart.cls
	rm -f $(TEX).pdf
	pdflatex -interaction=nonstopmode $(TEX)
	bibtex $(TEX)
	pdflatex -interaction=nonstopmode $(TEX)
	pdflatex -interaction=nonstopmode $(TEX)

clean:
	rm -f $(TEX).aux $(TEX).bbl $(TEX).blg $(TEX).log $(TEX).out $(TEX).toc \
	      $(TEX).lof $(TEX).lot $(TEX).fls $(TEX).fdb_latexmk $(TEX).synctex.gz \
	      $(TEX).nav $(TEX).snm $(TEX).vrb $(TEX).xdv $(TEX).bcf $(TEX).run.xml \
	      $(TEX).cpt $(TEX).glo $(TEX).ist $(TEX).acn $(TEX).acr $(TEX).alg \
				comment.cut
