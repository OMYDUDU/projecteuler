#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

def isprime(a)
	2.upto(Math.sqrt(a).to_i + 1) do |i|
		return false if a%i == 0
	end
	return true
end

def lprime(b)
	2.upto(b/2) do |i|
		if b%i == 0
			b = b/i
			return b if isprime(b) 
		end
	end
end

puts lprime(600851475143)