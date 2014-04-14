#145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

#Find the sum of all numbers which are equal to the sum of the factorial of their digits.

#Note: as 1! = 1 and 2! = 2 are not sums they are not included.

sum = 1
list = Array.new(10) do |i| 
	sum *= (i == 0) ? 1 : i
end

i = 0
loop do 
	break if (i*list[-1]).to_s.length == i
	i += 1
end

sum = 0
3.upto(i*list[-1]) do |x|
	tmpx = x
	tmp = []
	loop do
		break if tmpx == 0
		tmp << tmpx % 10
		tmpx /= 10
	end
	sum += x if tmp.inject(0) {|m,n| m + list[n]} == x
end

puts sum