# gentombow

This bundle provides a LaTeX package for generating Japanese-style
crop marks (called 'tombow' in Japanese) for practical use in
self-publishing.

## Bundle contents

- pxgentombow.sty:
    Generate crop marks (called 'tombow' in Japanese) for
    practical use in self-publishing.
    This package requires a core 'tombow' feature provided by
    pLaTeX/upLaTeX, LuaTeX-ja or gentombow (described below).
- gentombow.sty:
    Provides the core 'tombow' feature if not available.
    The pLaTeX/upLaTeX kernel and LuaTeX-ja package have
    a native 'tombow' feature, but the others
    (pdfLaTeX, XeLaTeX etc.) do not;
    in the latter case, this package provides a counterpart.
- bounddvi.sty:
    Set papersize special to DVI file.
    Can be used on LaTeX/pLaTeX/upLaTeX (with DVI output mode)
    with dvips or dvipdfmx drivers.
    Old version (v6.0) of this package, written by Koichi INOUE
    in 2004, is available at
    https://www.ma.ns.tcu.ac.jp/Pages/TeX/bounddvi.sty.html
    (dead link).
    Now it is maintained by Hironobu Yamashita by his courtesy.

## Character encoding

All the package files (.sty) contain ASCII characters only.
All the document files (.tex) are encoded in UTF-8.

## Installation

- *.sty -> $TEXMF/tex/platex/gentombow
- *.tex, *.pdf -> $TEXMF/doc/platex/gentombow

## Repository

The bundle is maintained on GitHub:
  https://github.com/aminophen/gentombow

## License

The bundle may be distributed and/or modified under the terms of
the 3-clause BSD license (see [LICENSE](./LICENSE)).

## Release Date

$RELEASEDATE

Hironobu Yamashita
