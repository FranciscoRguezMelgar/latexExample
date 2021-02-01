green = "\033[0;32m"
reset = "\033[0m"
red = "\033[0;31m"
l_red = "\033[1;31m"
%.pdf: %.tex
	@echo $(green)"Compiling document twice"$(reset)
	@echo $(red)"If compilation lasts too long, hit control + D"$(reset)
	pdflatex -output-directory=build $< >build/compile.log
	pdflatex -output-directory=build $< >build/compile.log
	mv build/$@ .
	@echo $(green)"Build complete."$(reset)
.PHONY : all
all : document.pdf
clean:
	@echo $(l_red)"Cleaning all aux files and pdf outputs."
	rm -fr ./build/* *.pdf
