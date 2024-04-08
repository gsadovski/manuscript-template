##########################################
## MANUSCRIPT MAKEFILE                  ##
## Author: Guilherme Sadovski           ##
## Contact: guilhermesadovski@gmail.com ##
## Date: 2024/03/06                     ##
##########################################

# DEFINITIONS OF VARIABLES #
TMPNAME=main
JOBNAME = template
DESTINY = $(CLOUD)/work/research/$(JOBNAME)

#####################
# PHONY CONVERSIONS #
#####################
move:
	mv -f $(TMPNAME).pdf $(DESTINY)/manuscript.pdf

clean: clean-pdf clean-aux
clean-pdf:
	rm -f  *.pdf
clean-aux:
	rm -f *.bbl *.aux *.log *.bcf *.blg *.out *.run.xml *.toc *.fls *.fdb_latexmk *.synctex.gz

quit-tex: move-pdf clean-pdf clean-aux

.PHONY: move clean clean-pdf clean-aux quit-tex
