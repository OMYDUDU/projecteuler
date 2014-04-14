#The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.

#We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

#There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.

#If the product of these four fractions is given in its lowest common terms, find the value of the denominator.
array = []

99.downto(11) do |x|
	x1 = x/10
	x2 = x%10
	next if x2 == 0 || x1 == x2
	1.upto(9) do |y|
		y1 = 10*y + x1
		y2 = 10*y + x2
		array << x2*10 + y if y1< x && (10000*y1/x).to_i == (10000*y/x2).to_i
		array << x1*10 + y if y2< x && (10000*y2/x).to_i == (10000*y/x1).to_i
	end
end

puts array.inject(1){|pr, m| pr*(m/10)}/array.inject(1){|pr, n| pr*(n%10)}

