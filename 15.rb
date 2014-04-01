#Starting in the top left corner of a 2X2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

tmp = Array.new(21){ [0]*21 }

0.upto(20) do |i|
	0.upto(i) do |j|
		if j == 0
			tmp[i][j] = 1
			tmp[j][i] = tmp[i][j]
		else
			tmp[i][j] = tmp[i][j - 1] + tmp[i - 1][j]
			tmp[j][i] = tmp[i][j]
		end

	end
end

puts tmp[20][20]


