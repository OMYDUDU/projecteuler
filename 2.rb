def fsum(a,b,c)
	return c < b ? 0 : b%2==0 ? b + fsum(b, a+b, c) : fsum(b, a+b, c)
end

puts fsum(1,2,4E6)