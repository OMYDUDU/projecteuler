def isprime(a)
	2.upto(a/2) do |i|
		if a%i == 0
			return false
		end
	end
	return true
end

def lprime(b)
	2.upto(b/2) do |i|
		if b%i == 0
			return b/i if isprime(b/i) 
		end
	end
end

puts lprime(600851475143)