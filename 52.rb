# 50By replacing the 1st digit of the 2-digit number *3, it turns out that six of the nine possible values: 13, 23, 43, 53, 73, and 83, are all prime.

# By replacing the 3rd and 4th digits of 56**3 with the same digit, this 5-digit number is the first example having seven primes among the ten generated numbers, yielding the family: 56003, 56113, 56333, 56443, 56663, 56773, and 56993. Consequently 56003, being the first member of this family, is the smallest prime with this property.

# Find the smallest prime which, by replacing part of the number (not necessarily adjacent digits) with the same digit, is part of an eight prime value family.

def getdig x
	return x.to_s.split(//).sort
end

find = false
3.upto(9).each do |size|
	min = 10**(size-1) + 1
	max = (10**size - 1)/6
	min.upto(max) do |x|
		if getdig(x) == getdig(2*x) && getdig(x) == getdig(3*x) && getdig(x) == getdig(4*x) && getdig(x) == getdig(5*x) && getdig(x) == getdig(6*x)
			puts x
			Process.exit(0)
		end
	end
end

#right