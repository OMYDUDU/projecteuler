# There are exactly ten ways of selecting three from five, 12345:

# 123, 124, 125, 134, 135, 145, 234, 235, 245, and 345

# In combinatorics, we use the notation, 5C3 = 10.

# In general,

# nCr =	
# n!
# r!(n?r)!
# ,where r ¡Ü n, n! = n¡Á(n?1)¡Á...¡Á3¡Á2¡Á1, and 0! = 1.
# It is not until n = 23, that a value exceeds one-million: 23C10 = 1144066.

# How many, not necessarily distinct, values of  nCr, for 1 ¡Ü n ¡Ü 100, are greater than one-million?

start, step = 23, 10
sum = start - 2*step + 1

nn = (start-step + 1).upto(start).inject(1){|pro, n| pro*n}
rr = 1.upto(step).inject(1){|pro, n| pro*n}

(start+1).upto(100).each do |i|
	nn *= i
	nn /= i-step
	while nn*step/(rr*(i-step+1)) > 1E6 #n!/((step-1)!*(i-step+!)!)> 1E6
		step -= 1
		nn /= i-step
		rr /= step+1
	end
	sum += i- 2*step + 1
end

puts sum