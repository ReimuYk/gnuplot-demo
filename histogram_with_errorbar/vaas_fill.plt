reset

# Set output format
set term png
set output "vaas_fill.png"

set size 1, 1
set origin 0,0

# set key top left samplen 3 spacing 1 font ',12' horizontal
set key top left Left reverse samplen 3 spacing 1 font ',18' vertical

set style data histogram
set style fill pattern 3 border -1

set boxwidth 0.8 relative

set ylabel "Latency" font ",16"
set ylabel offset character -4, 0, 0
set yrange[0:10]
set ytics font ",18"
set xrange[-0.6:2.6]
unset xtics
set xtics font ",16, Blod" #rotate by -24
set lmargin 15
set rmargin 8
set bmargin 3
set tmargin 3


#set grid

set style histogram errorbars gap 1 lw 1

plot "vaas_fill.txt" using 2:3:4:xticlabels(1) title columnheader(2) fs patter 1 lc rgb "#F3759E",\
	     '' using 5:6:7:xticlabels(1) title columnheader(3) fs patter 4 lc rgb "#77A656",\
	     '' using 8:9:10:xticlabels(1) title columnheader(4) fs patter 7 lc rgb "#FFFFFF"


