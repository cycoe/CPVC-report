# makefile for CPVC.tex

chapters = chapters/introduction.tex chapters/experiment.tex chapters/results.tex chapters/thanks.tex chapters/announce.tex chapters/conclusion.tex

origins = src/origin/1/hakee.ori src/origin/1/tg.ori src/origin/2/tg.ori src/origin/3/hakee.ori src/origin/3/tg.ori

plots = src/origin/1/hakee.tex src/origin/1/tg.tex src/origin/2/tg.tex src/origin/3/hakee.tex src/origin/3/tg.tex src/example/hakee.tex src/example/tg.tex

mainCache = *.aux *.blg *.bbl *.fdb_latexmk *.fls *.idx *.ilg *.ind *.log *.nav *.out *.snm *.synctex.gz *.toc *.xdv *.bcf

chapterCache = chapters/*.aux

CPVC.pdf: CPVC.tex $(chapters) biblio.bib $(plots)
	latexmk -xelatex -synctex=1 CPVC.tex

$(plots): plot.gnu $(origins)
	gnuplot plot.gnu

upload:
	git add .
	git commit -m "update"
	git push

clean:
	rm $(plots) & rm $(mainCache) & rm $(chapterCache)

