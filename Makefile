#!/usr/bin/env bash

.PHONY:			poster-ZH
poster-ZH:		poster-ZH.tex
	rubber --pdf --unsafe poster-ZH.tex

.PHONY:			poster-Dartmouth
poster-Dartmouth:	poster-Dartmouth.tex
	rubber --pdf --unsafe poster-Dartmouth.tex

clean:
	@rm -f *.vrb
	@rm -rf .tex_traces
	rubber --clean poster-Dartmouth.tex
	rubber --clean poster-ZH.tex
	@rm -f _minted-poster* -rf

