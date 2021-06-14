set terminal jpeg size 640,480
set output "test.jpg"
set title "Array Test"
set datafile separator ','
set ylabel "Time(sec)"
set xlabel "Array length"
set style line 100 lt 1 lc rgb "grey" lw 0.5 # linestyle for the grid
set grid ls 100
set autoscale fix
datafile = 'test.csv'
plot datafile using 1:2 title "Python" with lines,\
datafile using 1:4 title "PHP Array" with lines,\
datafile using 1:5 title "PHP SPLFixedArray" with lines,\
datafile using 1:7 title "Plain C" with lines,\
datafile using 1:9 title "Lua" with lines,\
datafile using 1:11 title "Python with array module" with lines,\
