#!/usr/bin/env bash

.PHONY:			poster-ZH
poster-ZH:		poster-ZH.tex
	rubber --pdf --unsafe poster-ZH.tex

.PHONY:			poster-Dartmouth
poster-Dartmouth:	poster-Dartmouth.tex
	rubber --pdf --unsafe poster-Dartmouth.tex

.PHONY: gallery
gallery: poster-Dartmouth poster-ZH
	convert -density 100 -trim poster-Dartmouth.pdf -quality 100 gallery/poster-Dartmouth.png
	convert -density 100 -trim poster-ZH.pdf -quality 100 gallery/poster-ZH.png

clean:
	@rm -f *.vrb
	@rm -rf .tex_traces
	rubber --clean poster-Dartmouth.tex
	rubber --clean poster-ZH.tex
	@rm -f _minted-poster* -rf

