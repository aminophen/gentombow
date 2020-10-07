TEXMF = $(shell kpsewhich -var-value=TEXMFHOME)

KANJI = -kanji=utf8
#FONTMAP = -f ipaex.map -f ptex-ipaex.map
FONTMAP = -f haranoaji.map -f ptex-haranoaji.map
LTX = platex $(KANJI)
DPX = dvipdfmx $(FONTMAP)

all: bounddvi.pdf bounddvi-en.pdf \
	gentombow.pdf gentombow-ja.pdf pxgentombow.pdf

.SUFFIXES: .tex .dvi .pdf
.tex.dvi:
	$(LTX) $<
	$(LTX) $<
	rm *.aux *.log
.dvi.pdf:
	$(DPX) $<

# specific build
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
	mkdir -p ${TEXMF}/doc/latex/gentombow
	cp ./LICENSE ${TEXMF}/doc/latex/gentombow/
	cp ./README.md ${TEXMF}/doc/latex/gentombow/
	cp ./*.pdf ${TEXMF}/doc/latex/gentombow/
	cp ./*.tex ${TEXMF}/doc/latex/gentombow/
	mkdir -p ${TEXMF}/tex/latex/gentombow
	cp ./*.sty ${TEXMF}/tex/latex/gentombow/
clean:
	rm -f *.dvi *.pdf
