local socket=require'socket';
local i = 1000;
while(i < 50000000) do
	local a = {};
	local start_time = socket.gettime();
	for j = 0, i do
		a[j] = 0;
	end
	local end_time = socket.gettime();
	local timer = (end_time - start_time);	
	print(string.format("%d,%f", i, timer));
	i = i*2;
end

