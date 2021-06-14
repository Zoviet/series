import time
import array as arr
a = []
x = 1000
y = 50000000
while x < y:
	start = time.time()
	a = [0]*x
	for j in range(0,x):
		a[j]=0
	end = time.time()
	print x,',',end - start
	x *= 2 

