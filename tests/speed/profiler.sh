#!/bin/bash
echo "Python array test start";
perf timechart record python test.py;
perf timechart -i perf.data -o python.svg
rm perf.data
echo "PHP array test start";
perf timechart record php test.php ;
perf timechart -i perf.data -o php.svg
rm perf.data
echo "Plain C array test start";
perf timechart record ./test;
perf timechart -i perf.data -o c.svg
rm perf.data
echo "Lua array test start";
perf timechart record lua test.lua;
perf timechart -i perf.data -o lua.svg
rm perf.data
echo "Python with array module";
perf timechart record python test2.py ;
perf timechart -i perf.data -o python2.svg
rm perf.data

