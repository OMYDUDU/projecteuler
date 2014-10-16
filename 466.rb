a = 64
b = 1E16.to_i
num = b
(b+1).upto(a*b) do |x|
	2.upto(b) do |y|
		if x/y < (a+1) && x%y == 0
			num += 1
			break
		end
	end
end

puts num
