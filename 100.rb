x = 1E12
k = 0
loop do
	tmp = 2*x*x - 2*x + 1
	k = (Math.sqrt(tmp)).to_int
	puts x
	if k*k%10000000 == tmp%10000000 && k%2 == 1
		puts k
		puts tmp.to_i
		break
	end
	x += 1
end

puts x
puts (1+k)/2

#puts tmp*(tmp-1)/(x*(x-1))
