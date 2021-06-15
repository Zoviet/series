implicit  none
integer  x,y
x = 1000
y = 50000000
do while(x<y)                      	
	call array_fill(x)
	x=x*2
	
 end do
 
end

subroutine array_fill (x)
	integer, intent (in) :: x
	real, dimension (x) :: test_array
	real(4) :: t1, t2
	integer k
	k = 0	
	t1 = secnds (0.0)  
	do while (k<=x)
		test_array(k) = 0
		k = k+1
	end do
	t2 = secnds (t1) 
	print *,x,",", t2
	return
end
