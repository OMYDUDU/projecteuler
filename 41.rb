def isprime(a)
	return true if a == 2
	2.upto(Math.sqrt(a).to_i + 1) {|i| return false if a%i == 0 }
	return true
end

987654321.downto(123456789) do |x|
	tmp = x.to_s.split(//)
	if ['1','2','3','4','5','6','7','8','9'] - tmp == []
		if isprime x
			puts x
			break
		end
	end
end
