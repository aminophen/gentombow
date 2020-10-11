# gentombow

This bundle provides a LaTeX package for generating Japanese-style
crop marks (called 'tombow' in Japanese) for practical use in
self-publishing.
The core feature of "gentombow.sty" is based on pLaTeX kernel.

## Supported engines

All packages except bounddvi.sty works with the followings:
- LaTeX + dvips/dvipdfmx
- pLaTeX/upLaTeX + dvips/dvipdfmx
- pdfLaTeX
- LuaLaTeX
- XeLaTeX

## Bundle contents

- gentombow.sty:
    Generate crop marks (called 'tombow' in Japanese) for
    practical use in self-publishing.
    It provides the core 'tombow' feature if not available.
- pxgentombow.sty:
    (Superseded by gentombow.sty; for compatibility only.)
- bounddvi.sty:
    Set papersize special to DVI file.
    Can be used on LaTeX/pLaTeX/upLaTeX (with DVI output mode)
    with dvips or dvipdfmx drivers.
    Old version (v6.0) was written by Koichi INOU in 2004
    (https://www.ma.ns.tcu.ac.jp/Pages/TeX/bounddvi.sty.html),
    and incorporated into this bundle by his courtesy.

## Miscellaneous patches

Some packages are unaware of crop marks defined in "gentombow";
to cope with those packages, patches are provided here.
- pxtextpos.sty:
    Patch for textpos.sty (by Norman Gray).
- pxesopic.sty:
    Patch for eso-pic.sty (by Rolf Niepraschk).
- pxpdfpages.sty:
    Patch for pdfpages.sty (by Andreas Matthias).

These patches can also be used independent of "gentombow",
to avoid problems with crop marks on pLaTeX and upLaTeX.

## Character encoding

All the package files (.sty) contain ASCII characters only.
All the document files (.tex) are encoded in UTF-8.

## Installation

- *.sty -> $TEXMF/tex/latex/gentombow
- *.tex, *.pdf -> $TEXMF/doc/latex/gentombow

## Repository

The bundle is maintained on GitHub:
  https://github.com/aminophen/gentombow

## License

The bundle may be distributed and/or modified under the terms of
the 3-clause BSD license (see [LICENSE](./LICENSE)).

## Release Date

$RELEASEDATE

Hironobu Yamashita
