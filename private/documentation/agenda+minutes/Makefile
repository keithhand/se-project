.PHONY: files

CC = pdflatex
TEMPLATE_DIR = templates
INCLUDE_DIR = includes
AGENDA_DIR = docs/agenda
MINUTES_DIR = docs/minutes
TEMPLATE_SRCS = $(shell find $(TEMPLATE_DIR) -name '*.tex')
INCLUDE_SRCS = $(shell find $(INCLUDE_DIR) -name '*.tex')
AGENDA_SRCS = $(shell find $(AGENDA_DIR) -name '*.tex')
MINUTES_SRCS = $(shell find $(MINUTES_DIR) -name '*.tex')

main.pdf: main.tex $(TEMPLATE_SRCS) $(INCLUDE_SRCS) $(AGENDA_SRCS) $(MINUTES_SRCS)
	$(CC) $<
	make fresh

meetingVersion: meeting.tex $(TEMPLATE_SRCS) $(INCLUDE_SRCS) $(AGENDA_SRCS)
	$(CC) $<
	make fresh
	
fresh:
	rm -rf *.log *.out *.aux
	
clean:
	rm -rf *.pdf
