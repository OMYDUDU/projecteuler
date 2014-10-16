# It was proposed by Christian Goldbach that every odd composite number can be written as the sum of a prime and twice a square.

# 9 = 7 + 2¡Á12
# 15 = 7 + 2¡Á22
# 21 = 3 + 2¡Á32
# 25 = 7 + 2¡Á32
# 27 = 19 + 2¡Á22
# 33 = 31 + 2¡Á12

# It turns out that the conjecture was false.

# What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?

primeli = Array.new()
primeli[0] = 3

def isprime(a)
	return true if a == 2
	2.upto(Math.sqrt(a).to_i + 1) do |i|
		return false if a%i == 0
	end
	return true
end

def break_rule(key, primeli)
	1.upto(Math.sqrt(key/2).to_i + 1) do |i|
		primeli.each do |j|
			if j + 2 * i * i == key
				return false
			elsif j + 2 * i * i > key
				break
			end
		end
	end
	return true
end

(5..20000).step(2).each do |i|
	#puts i
	primeli << i if isprime(i)
	if break_rule(i, primeli)
		puts i
	end
end


# 17?