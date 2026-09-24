verilator --binary -j 0 --Wall full_adder.v rca.v rca_tb.v -top rca_tb --timing --CFLAGS "-std=c++20" --trace

cd obj_dir

make -f Vrca_tb.mk Vrca_tb

./Vrca_tb

gtkwave rca.vcd
