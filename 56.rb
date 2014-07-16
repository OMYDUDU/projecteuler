# A googol (10100) is a massive number: one followed by one-hundred zeros; 100100 is almost unimaginably large: one followed by two-hundred zeros. Despite their size, the sum of the digits in each number is only 1.

# Considering natural numbers of the form, ab, where a, b < 100, what is the maximum digital sum?

array = Array.new(200) {|i| 0 }

maxmum = 0

2.upto(99) do |a|
	array[0] = a
	2.upto(99) do |b|
		tmp, sum = 0, 0
		array.collect! do |i|
			tmp, i = (i*a+tmp)/10, (i*a+tmp)%10
			i			 
		end
		sum = array.inject{|m, n| m+n}
		maxmum = sum if sum > maxmum
	end
	array.fill(0)
end

puts maxmum