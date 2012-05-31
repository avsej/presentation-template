PRESENTATION=example

example.pdf: $(PRESENTATION).tex beamerthemecouchbase.sty
	lualatex $(PRESENTATION).tex

compress: $(PRESENTATION).pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$(PRESENTATION)-compressed.pdf $(PRESENTATION).pdf
	mv $(PRESENTATION)-compressed.pdf $(PRESENTATION).pdf
