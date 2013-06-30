TEXFLAGS = -jobname=$(JOBNAME) -shell-escape 
BATCHFLAGS = $(TEXFLAGS) -interaction=batchmode
LATEX = pdflatex
JOBNAME = generated_output

.PHONY: all new clean cleanall

all: new clean

new:
	$(LATEX) $(BATCHFLAGS) 0_article.tex
	$(LATEX) $(BATCHFLAGS) 0_article.tex > /dev/null
	$(LATEX) $(BATCHFLAGS) 0_article.tex > /dev/null

update:
	$(LATEX) $(TEXFLAGS) 0_article.tex

clean:
	@$(RM) *.aux *.cpt *.log  *.lol *.out *.toc

cleanall: clean
	@$(RM) $(JOBNAME).pdf
