#The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases by 3330, is unusual in two ways: (i) each of the three terms are prime, and, (ii) each of the 4-digit numbers are permutations of one another.

#There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, exhibiting this property, but there is one other 4-digit increasing sequence.

#What 12-digit number do you form by concatenating the three terms in this sequence?

def isprime(a)
	return 2 if a == 2
	2.upto(Math.sqrt(a).to_i + 1) do |i|
		return false if a%i == 0
	end
	return true
end

def sorted(a)
	return [a/1000,a/100%10,a/10%10,a%10].sort
end

h = Hash.new
1000.upto(9997).each do |x|
	if isprime(x)
		if h.has_key?(sorted(x))
			h[sorted(x)] << x
		else
			h[sorted(x)] = [x]
		end
	end
end

h.each do |k,v|
	if v.length < 3
		h.delete(k)
	else
		0.upto(v.length-3) do |x|
			(x+1).upto(v.length-2) do |y|
				(y+1).upto(v.length-1) do |z|
					puts v[x].to_s + v[y].to_s + v[z].to_s if v[y]-v[x] == v[z]-v[y] && v[x] != 1487
				end
			end
		end
	end
end