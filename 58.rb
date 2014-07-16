# Starting with 1 and spiralling anticlockwise in the following way, a square spiral with side length 7 is formed.

# 37 36 35 34 33 32 31
# 38 17 16 15 14 13 30
# 39 18  5  4  3 12 29
# 40 19  6  1  2 11 28
# 41 20  7  8  9 10 27
# 42 21 22 23 24 25 26
# 43 44 45 46 47 48 49

# It is interesting to note that the odd squares lie along the bottom right diagonal, but what is more interesting is that 8 out of the 13 numbers lying along both diagonals are prime; that is, a ratio of 8/13 ¡Ö 62%.

# If one complete new layer is wrapped around the spiral above, a square spiral with side length 9 will be formed. If this process is continued, what is the side length of the square spiral for which the ratio of primes along both diagonals first falls below 10%?

def isprime(a)
	return true if a == 2
	2.upto(Math.sqrt(a).to_i + 1) do |i|
		return false if a%i == 0
	end
	return true
end


up = true
i = 1
sum = 0
while true
	sum += 1 if isprime(i*i+i+1)
	#puts i*i+i+1 if isprime(i*i+i+1)
	sum += 1 if isprime(i*i+2*i+2)
	#puts i*i+2*i+2 if isprime(i*i+2*i+2)
	sum += 1 if isprime(i*i+3*i+3)
	#puts i*i+3*i+3 if isprime(i*i+3*i+3)
	break if sum*1.0/(2*i-1) < 0.1
	i += 2
end
puts i