reset
set term post "Times" eps color solid enh
set output "output.eps"
# set term png
# set output "vaas_fill.png"

set size 1.3, 1
set origin 0,0

set key top left Left reverse samplen 3 spacing 1 font ',30' vertical

set style data histogram
# set style fill pattern 3 border 0
set style fill solid 1 border

# bar width in one cluster
set boxwidth 1 relative

set ylabel "Latency (ms)" font ",30"
set ylabel offset character -4, 0, 0
set yrange[0:60]
set ytics font ",18"
set xrange[-0.6:3.6]
unset xtics
set xtics font ",30, Blod" #rotate by -24
set lmargin 15
set rmargin 8
set bmargin 3
set tmargin 3


#set grid

set style histogram errorbars gap 1 lw 2

plot "data_with_error.txt" using 2:3:4:xticlabels(1) title columnheader(2) lc rgb "#006600" fs pattern 1,\
	     '' using 5:6:7:xticlabels(1) title columnheader(3) lc rgb "#990099" fs patter 4,\
	     '' using 8:9:10:xticlabels(1) title columnheader(4) lc rgb "#6600FF" fs patter 5


