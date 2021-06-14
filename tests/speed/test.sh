#!/bin/bash
:> test.csv;
echo "Python array test start";
python test.py > temp0;
echo "PHP array test start";
php test.php > temp1;
echo "Plain C array test start";
./test > temp2;
echo "Lua array test start";
lua test.lua > temp3;
echo "Python with array module";
python test2.py > temp4;
csvtool paste temp0 temp1 temp2 temp3 temp4 > test.csv
rm temp0;
rm temp1;
rm temp2;
rm temp3;
rm temp4;
gnuplot -p test.gnuplot;

