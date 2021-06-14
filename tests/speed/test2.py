import time
from array import *
x = 1000
y = 50000000
while x < y:	
	data = array('i', []);	
	start = time.time()
	for j in range(0,x):
		data.insert(x, 0);
	end = time.time()
	print x,',',end - start
	x *= 2 

