.DEFAULT_GOAL := gantt

all: install gantt

gantt:
	Rscript gantt.R

install:
	Rscript install_packages.R
