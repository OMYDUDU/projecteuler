#By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.
#
#3
#7 4
#2 4 6
#8 5 9 3
#
#That is, 3 + 7 + 4 + 9 = 23.
#
#Find the maximum total from top to bottom in triangle.txt (right click and 'Save Link/Target As...'), a 15K text file containing a triangle with one-hundred rows.
#
#NOTE: This is a much more difficult version of Problem 18. It is not possible to try every route to solve this problem, as there are 299 altogether! If you could check one trillion (1012) routes every second it would take over twenty billion years to check them all. There is an efficient algorithm to solve it. ;o)

array = IO.readlines('triangle.txt')
array.each_index do |i|
	array[i] = array[i].split(' ').inject(Array.new){|arr, j| arr << j.to_i}
end

tmp = Array.new(array.length){|i| [0]*(i+1)}

(tmp.length-1).downto(0) do |i|
	i.downto(0) do |j|
		if i == tmp.length-1
			tmp[i][j] = array[i][j]	
		else
			tmp[i][j] = array[i][j]	+ (tmp[i+1][j] > tmp[i+1][j+1] ? tmp[i+1][j] : tmp[i+1][j+1])
		end
	end
end

puts tmp[0][0]

