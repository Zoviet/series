#!/bin/bash
echo "Python array test start";
perf stat python test.py 2>profile.txt;
echo "Python with array module";
perf stat python test2.py 2>>profile.txt;
echo "PHP array test start";
perf stat php test0.php 2>>profile.txt;
echo "PHP SPLarray test start";
perf stat php test1.php 2>>profile.txt;
echo "Plain C array test start";
perf stat ./test 2>>profile.txt;
echo "Lua array test start";
perf stat lua test.lua 2>>profile.txt;


