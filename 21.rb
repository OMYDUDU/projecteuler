#Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
#If d(a) = b and d(b) = a, where a != b, then a and b are an amicable pair and each of a and b are called amicable numbers.

#For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

#Evaluate the sum of all the amicable numbers under 10000.

def amicable(int)
	array = [1]
	2.upto(Math.sqrt(int).to_i) do |x|
		if int % x == 0
			array << x
			array << int / x
		end
	end
	return array.uniq.inject{ | sum, n| sum + n }
end

array = []
i =2

loop do
	unless array.include?(i)
		am_i = amicable(i)
		if am_i != i && amicable(am_i) == i
			array << i
			array << am_i
		end
	end
	i = i + 1
	break if i > 9999
end

puts array.inject{ |sum, n| sum + n}