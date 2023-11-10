#!/usr/bin/env bash

.PHONY: poster
poster:	poster.tex
	rubber --pdf --unsafe poster.tex

clean:
	@rm -f *.vrb
	@rm -rf .tex_traces
	rubber --clean poster.tex
	@rm -f _minted-poster -rf

