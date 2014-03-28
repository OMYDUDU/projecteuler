#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def compine(a, b)
	a.each do |i|
		b.delete_at(b.index(i)) unless b.index(i) == nil
	end
	return a + b
end

def primelist(a)# e.g 10 => [2,5]; 8 => [2,2,2]; 3 => [3];
	return [1] if a < 2
	(a-1).downto(2) do |i|
		if a%i == 0
			return [] << primelist(i) << primelist(a/i)
		end
	end
	return [a]
end

puts 2.upto(20).map{|i| primelist(i).flatten}.inject{|sum, n| compine(sum, n)}.inject{|sum, n| sum*n}

