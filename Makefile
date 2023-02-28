.PHONY: examples

CC = arara
OUTPUT_DIR = output
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

# examples: $(foreach x, coverletter cv resume, $x.pdf)

resume.pdf: main.tex $(RESUME_SRCS)
	$(CC)  $<

# coverletter.pdf: coverletter.tex
# 	$(CC)  $<

clean:
	rm -rf *.aux *.log *.out
