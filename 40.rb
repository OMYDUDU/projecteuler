#An irrational decimal fraction is created by concatenating the positive integers:

#0.123456789101112131415161718192021...

#It can be seen that the 12th digit of the fractional part is 1.

#If dn represents the nth digit of the fractional part, find the value of the following expression.

#d1 X d10 X d100 X d1000 X d10000 X d100000 X d1000000

int, pro, com, sum = 1,1,1,0
loop do
	sum += int.to_s.length
	unless sum < com
		pro *= int.to_s.split(//)[com - sum - 1].to_i
		com *= 10
	end
	break if com > 1000000
	int += 1
end
puts pro


