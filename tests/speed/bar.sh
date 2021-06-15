#!/bin/bash
:> plot.csv;
cat ./profile.txt | sed -n '13s/seconds time elapsed/,Python/p' >> plot.csv; 
cat ./profile.txt | sed -n '27s/seconds time elapsed/,Python Array/p' >> plot.csv; 
cat ./profile.txt | sed -n '41s/seconds time elapsed/,PHP standart/p' >> plot.csv; 
cat ./profile.txt | sed -n '55s/seconds time elapsed/,PHP SPL/p' >> plot.csv; 
cat ./profile.txt | sed -n '69s/seconds time elapsed/,Plain C/p' >> plot.csv; 
cat ./profile.txt | sed -n '83s/seconds time elapsed/,Lua/p' >> plot.csv; 
cat ./profile.txt | sed -n '97s/seconds time elapsed/,Fortran/p' >> plot.csv; 
gnuplot -p profile.gnuplot;
