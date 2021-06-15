set terminal jpeg size 880,880
set output "profile.jpg"
set title "Profiler test"
set datafile separator ','
set ylabel "Time(sec)"
set xlabel "Profile"
set autoscale fix
set boxwidth 0.5
datafile = 'plot.csv'
set style fill solid
plot datafile using 1:xtic(3) with boxes
