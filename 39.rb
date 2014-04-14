#If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.

#{20,48,52}, {24,45,51}, {30,40,50}

#For which value of p ¡Ü 1000, is the number of solutions maximised?

max_num = 0
p = 0
1000.downto(6) do |x|
	num = 0
	(x/2).downto(x/3 + 1) do |y|
		(x-y)/2.upto(x-y) do |z|
			num +=1 if y*y == z*z + (x-y-z)**2
		end
	end
	if num > max_num
		max_num = num
		p = x
	end
end

#puts max_num
puts p