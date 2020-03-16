# template Makefile

# update and install the DS repo files
.PHONY build
install :
	git submodule update --init --recursive --jobs 4
	git pull --recurse-submodules
	bash includes/install.sh

.PHONY data
data :
	@echo Making data...

test :
	@echo Running preflight tests...

experiments :  # should depend on data sources & tests
	@echo Running experiments...

reports :  # again should depend on data
	@echo Compiling reports
