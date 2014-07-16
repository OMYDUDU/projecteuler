#The number, 1406357289, is a 0 to 9 pandigital number because it is made up of each of the digits 0 to 9 in some order, but it also has a rather interesting sub-string divisibility property.
#Let d1 be the 1st digit, d2 be the 2nd digit, and so on. In this way, we note the following:
#d2d3d4=406 is divisible by 2
#d3d4d5=063 is divisible by 3
#d4d5d6=635 is divisible by 5
#d5d6d7=357 is divisible by 7
#d6d7d8=572 is divisible by 11
#d7d8d9=728 is divisible by 13
#d8d9d10=289 is divisible by 17
#Find the sum of all 0 to 9 pandigital numbers with this property.

def atoi(a)
	return a.inject(0){|sum, n| sum*10 + n}
end

sum = 0
[0,1,2,3,4,5,6,7,8,9].permutation.each do |x|
	if x[0] != 0 && [0,2,4,6,8].include?(x[3]) && [0,5].include?(x[5])
		sum += atoi(x) if (x[2]+x[3]+x[4])%3 == 0 && atoi(x[4..6])%7 == 0 && atoi(x[5..7])%11 == 0 && atoi(x[6..8])%13 == 0 && atoi(x[7..9])%17 == 0
	end
end

puts sum