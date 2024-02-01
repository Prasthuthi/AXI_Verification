compile:
	vlib work;
	vlog -sv \
	+acc \
	+cover \
	+fcover \
	fadd.v \
	fadd_tb.v

simulate:
	vsim -vopt work.fadd_tb \
	-voptargs=+acc=npr \
	-assertdebug \
	-l fadd.log \
	-sva \
	-coverage \
	-c -do "log -r /; add wave -r /; coverage save -onexit -assert -directive -cvg -codeAll fadd_coverage.ucdb; run -all; exit" \
	-wlf fadd_waveform.wlf

all:
	make compile
	make simulate
