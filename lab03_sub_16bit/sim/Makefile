#------------------------------------------
SHELL	= /bin/sh
MAKEFILE = Makefile
#------------------------------------------
ifeq ($(MAKECMDGOALS),$(findstring $(MAKECMDGOALS), "" "all" "elab" "sim"))
	ifeq (, $(shell which iverilog))
		$(error iverilog not found.)
	endif
endif
#------------------------------------------
ILOG	= iverilog
ISIM	= vvp
#------------------------------------------
TOP		= tb_subtractor
ISIM	= vvp
#------------------------------------------
all: compile simulate

compile:
	($(ILOG) -o $(TOP).vvp -s $(TOP) -c run.f || exit-1) 2>&1 | tee compile.log

simulate: compile 
	$(ISIM) -l vvp.log $(TOP).vvp
