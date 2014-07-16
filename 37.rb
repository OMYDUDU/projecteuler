#The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

#Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

#NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

# number: 0 1 2 3 4 5 6 7 8 9
# First : N N Y Y N Y N Y N N [2,3,5,7]
# middle: N Y N Y N N N Y N Y [1,3,7,9]
# Last   : N N N Y N N N Y N N [3,7]

def isprime(a)
	return true if a == 2
	2.upto(Math.sqrt(a).to_i + 1) {|i| return false if a%i == 0 }
	return true
end

start, final = [2,3,5,7], []

loop do
	change = false
	start.each do |x|
		tmp = []
		[1,3,7,9].each do |y| 
			tmp << (x*10 + y) if isprime(x*10 + y)
 		end
 		unless tmp.empty?
 			change = true
 			start << tmp
			start.flatten!
		end
		final << x if x > 10
		start.delete(x)
	end
	break unless change
end

final = (final+start).flatten.sort.uniq

final.uniq.each do |x|
	if x%10 != 3 && x%10 != 7
		final << x*10 + 3 if isprime(x*10 + 3)
		final << x*10 + 7 if isprime(x*10 + 7)
		final.delete x
	end
end


sum = 0

final.sort.uniq.each do |x|
	tmp = x
	ind = x.to_s.length - 1
	loop do
		break if ind == 0
		tmp %= 10**ind
		break unless isprime tmp
		ind -= 1
	end

	sum += x if ind == 0
end

puts sum
