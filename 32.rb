#We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

#The product 7254 is unusual, as the identity, 39 X 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

#Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.

#HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.

array = [[1,4,4],[2,3,4]]

a = [1,2,3,4,5,6,7,8,9]

b = []

array.each do |x|
	a.permutation(x[0]).to_a.each do |y|
		(a - y).permutation(x[1]).to_a.each do |z|
			pro = y.join.to_i * z.join.to_i
			d = pro.to_s.split(//)
			b << pro if d.length == x[2] && (a-y-z).sort.join == d.sort.join
		end
	end
end

puts b.uniq.inject{|sum,n| sum + n}