#The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

#There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

#How many circular primes are there below one million?

def isprime(a)
	return false if a == 1
	return true if a == 2
	2.upto(Math.sqrt(a).to_i + 1) do |i|
		return false if a%i == 0
	end
	return true
end

array = [0] * (1E6 -1)

i = 1

loop do
	if array[i - 1] == 0
		circular = false
		size = i.to_s.length - 1
		tmp_i = i
		if isprime(i)
			loop do
				tmp_i = (tmp_i%10) * (10 ** size) + tmp_i/10
				break unless isprime(tmp_i)
				if tmp_i == i
					circular = true
					break
				end
			end
		end

		array[i - 1] = circular
		tmp_i = i
		loop do
			break if tmp_i == i
			tmp_i = (tmp_i%10) * (10 ** size) + tmp_i/10
			array[tmp_i - 1] = circular
		end
	end

	i += 1
	break if i > 1e6 - 1
end

puts array.count(true)

#array.each_index do |x|
#	puts x+1 if array[x] == true
#end