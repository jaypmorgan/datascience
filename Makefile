# template Makefile

# update and install the DS repo files
.PHONY build
build :
	git submodule update --init --recursive --jobs 4
	git pull --recurse-submodules

.PHONY data
data :
	@echo Making data...

experiments :  # should depend on data sources
	@echo Running experiments...

reports :  # again should depend on data
	@echo Compiling reports
