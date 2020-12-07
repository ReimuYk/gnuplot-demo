reset
set term post "Times" eps color solid enh
set output "output.eps"
# set term pngcairo dashed
# set output "vaas_line.png"

set size ratio 0.5

set origin 0,0

set key left Left reverse width 0.6 height 0.5 font ',18' #box opaque # horizontal

set border black

set ylabel "Latency (ms)" font ",20" offset character -3, 0, 0

set ytics font ",4"

set lmargin 15
set rmargin 8
set bmargin 3
set tmargin 2

set yrange [0: 2550] 
set xrange[0: 750]

unset xtics
set xtics  nomirror  font ",4"
set xlabel "Throughput (request/second)"  font ",20" offset character 0, -1, 0

#pink
set style line 2 dt 1 lt 1 lc rgb "#F3759E" lw 1 pt 2 ps 1

#pink
set style line 3 dt 2 lt 1 lc rgb "#F3759E" lw 1 pt 2 ps 1

#green
set style line 4 dt 1 lt 10 lc rgb "#77A656" lw 1 pt 4 ps 1

#green
set style line 5 dt 2 lt 10 lc rgb "#77A656" lw 1 pt 4 ps 1




#set grid

set xtics font ",24" ( "0" 0, "100" 100, "200" 200, "300" 300, "400" 400, "500" 500, "600" 600, "700" 700)
set ytics font ",24" ( "0" 0, "500" 500, "1000" 1000, "1500" 1500, "2000" 2000, "2500" 2500)

plot  'data_baseline.txt' u 1:2 with linespoints linestyle 2 ti "Baseline 50p",\
    'data_baseline.txt' u 1:3 with linespoints linestyle 3 ti "Baseline 99p",\
	'data_beldi.txt' u 1:2 with linespoints linestyle 4 ti "Beldi 50p",\
	'data_beldi.txt' u 1:3 with linespoints linestyle 5 ti "Beldi 99p"


