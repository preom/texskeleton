# Config Settings 
# Note: source extension must be .tex, and output will be .pdf
outputbName = output
sourcebName = source

outputFName = $(outputbName).pdf
sourceFName = $(sourcebName).tex

all: $(sourceFName); pdflatex -jobname=$(outputbName) $(sourcebName)

clean:; rm output*
    
run: all; evince $(outputFName)

