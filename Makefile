KANJI = -kanji=utf8
FONTMAP = -f ipaex.map -f ptex-ipaex.map
TEXMF = $(shell kpsewhich -var-value=TEXMFHOME)

all: bounddvi.pdf bounddvi-en.pdf \
	gentombow.pdf pxgentombow.pdf

.SUFFIXES: .tex .dvi .pdf
.tex.dvi:
	platex $(KANJI) $<
	platex $(KANJI) $<
	rm *.aux *.log
.dvi.pdf:
	dvipdfmx $(FONTMAP) $<

bounddvi-en.dvi: bounddvi-en.tex
	latex $<
	latex $<
	rm *.aux *.log
gentombow.pdf: gentombow.tex
	pdflatex $<
	pdflatex $<
	rm *.aux *.log

.PHONY: install clean
install:
	mkdir -p ${TEXMF}/doc/platex/gentombow
	cp ./Makefile ${TEXMF}/doc/platex/gentombow/
	cp ./LICENSE ${TEXMF}/doc/platex/gentombow/
	cp ./README.md ${TEXMF}/doc/platex/gentombow/
	cp ./*.pdf ${TEXMF}/doc/platex/gentombow/
	cp ./*.tex ${TEXMF}/doc/platex/gentombow/
	mkdir -p ${TEXMF}/tex/platex/gentombow
	cp ./*.sty ${TEXMF}/tex/platex/gentombow/
clean:
	rm -f *.dvi *.pdf
