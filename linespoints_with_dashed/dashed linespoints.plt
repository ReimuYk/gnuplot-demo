reset
#set term post "Times" eps color solid enh
#set output "eval-enclave-enclave-comm.eps"
set term pngcairo dashed

set output "vaas_line.png"

set size ratio 0.75

set origin 0,0

set key left width 0.6 height 0.5 font ',4' box opaque # horizontal

set border black

set ylabel "Latency (kcycles)" font ",7" offset character 3, 0, 0

set ytics font ",4"

set lmargin 4
set rmargin 8
set bmargin 3
set tmargin 2

set yrange [1: 200000] 



set xrange[4:65536]
unset xtics
set xtics  nomirror  font ",4"
set xlabel "Message size (Byte)"  font ",7" offset character 0, 0.8, 0
set log x 2




#red 
#set style line 1 \
#    linecolor rgb '#dd181f' \
#    linetype 1 linewidth 2 \
#    pointtype 3 pointsize 0.8


#pink
set style line 2 dt 1 lt 1 lc rgb "#F3759E" lw 1 pt 4 ps 1

#green
set style line 3 dt 1 lt 10 lc rgb "#77A656" lw 1 pt 2 ps 1

#pink
set style line 4 dt 3 lt 1 lc rgb "#F3759E" lw 1 pt 4 ps 1

#green
set style line 5 dt 3 lt 10 lc rgb "#77A656" lw 1 pt 2 ps 1




#set grid

set xtics font ",6" ("4K" 4,"16K" 16, "64K" 64, "256K" 256, "1M" 1024, "4M" 4096, "16M" 16384, "64M" 65536)
set ytics font ",6" ( "50K" 50000, "100K" 100000, "150K" 150000, "200K" 200000) 

plot  'eval-enclave-enclave-comm.txt' u 1:2 with linespoints linestyle 2 ti "Ownership transfer",\
        '' u 1:3 with linespoints linestyle 3 ti "Shared memory",\
	'' u 1:4 with linespoints linestyle 4 ti "Ownership2",\
	'' u 1:5 with linespoints linestyle 5 ti "Shared2"


