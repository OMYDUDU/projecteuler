#Euler discovered the remarkable quadratic formula:

#n2 + n + 41

#It turns out that the formula will produce 40 primes for the consecutive values n = 0 to 39. However, when n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, and certainly when n = 41, 412 + 41 + 41 is clearly divisible by 41.

#The incredible formula  n2 - 79n + 1601 was discovered, which produces 80 primes for the consecutive values n = 0 to 79. The product of the coefficients, ?79 and 1601, is ?126479.

#Considering quadratics of the form:

#n2 + an + b, where |a| < 1000 and |b| < 1000

#where |n| is the modulus/absolute value of n
#e.g. |11| = 11 and |-4| = 4
#Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n = 0.

def isprime(a)
	return true if a == 2
	2.upto(Math.sqrt(a).to_i + 1) do |i|
		return false if a%i == 0
	end
	return true
end

prod = 0
max_num = 1
999.downto(-999) do |b|
	999.downto(-999) do |c|
		if isprime(c.abs)
			i = 1
			num = 1
			loop do
				if isprime ((i*i + b * i + c).abs)
					i +=1
					num +=1
				else
					if num > max_num
						max_num = num
						prod = b * c
					end
					break
				end
			end
		end
	end
end

puts prod

