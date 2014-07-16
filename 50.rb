# The prime 41, can be written as the sum of six consecutive primes:

# 41 = 2 + 3 + 5 + 7 + 11 + 13
# This is the longest sum of consecutive primes that adds to a prime below one-hundred.

# The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.

# Which prime, below one-million, can be written as the sum of the most consecutive primes?

primeli = Array.new()
primeli[0] = 0
primeli[1] =2

def isprime(a)
	return true if a == 2
	2.upto(Math.sqrt(a).to_i + 1) do |i|
		return false if a%i == 0
	end
	return true
end

num, len, maxlen, maxlenprime, id = 0, 0, 1, 1, 0

(3..999999).step(2).each do |i|
	if isprime i
		primeli << primeli[-1] + i
		while primeli[id]< i
			id +=1
		end

		if i > 1E5
			low = 0
			id.upto(primeli.length - 1) do |high|
				while primeli[high] - primeli[low] > i
					low += 1
				end
				break if i / maxlen < (primeli[low]-primeli[low-1]) 
				if primeli[high] - primeli[low] == i && high - low > maxlen
					maxlen = high - low
					maxlenprime = i
				end
			end
		end
	end
end
puts maxlen
puts maxlenprime

#right
