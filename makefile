green = "\033[0;32m"
reset = "\033[0m"
red = "\033[0;31m"
l_red = "\033[1;31m"
yellow = "\033[1;33m"

.DEFAULT_GOAL := document
.PRECIOUS: %.pdf

%: %.pdf
	
%.pdf: %.tex 
	@echo $(green)"===Starting to build$<==="$(reset)
	@echo $(green)"    Compiling document twice"$(reset)
	@echo $(yellow)"    Compilation log writen into build/compile.log"$(reset)
	@echo $(red)"    If compilation lasts too long, hit control + D"$(reset)
	@if [ ! -d "build" ]; then\
		echo $(yellow)"    The build directory doesn't exist, creating it..."$(reset);\
		mkdir build;\
		echo $(yellow)"    Directory created successfully"$(reset);\
	fi;
	@pdflatex -output-directory=build $< >build/compile.log
	@echo "    Preliminar compilation ok"
	@-biber --input-directory build --output-directory build $(basename $<) >>build/compile.log
	@echo "    Bibliography building ok"
	@pdflatex -output-directory=build $< >build/compile.log
	@echo "    First compilation ok"
	@pdflatex -output-directory=build $< >build/compile.log
	@echo "    Second compilation ok"
	@mv build/$@ .
	@echo $(green)"    Build complete."$(reset)

.PHONY : all
all : document amsmath beamer



.PHONY : clean
clean:
	@echo $(l_red)"Cleaning all aux files and pdf outputs."
	@rm -fr ./build *.pdf
