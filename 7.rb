#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the 10 001st prime number?


def isprime(a)
	3.upto(Math.sqrt(a).to_i + 1) do |i|
		return false if a%i == 0
	end
	return true
end



num = 10000
int = 1
while num != 0
	int = int + 2
	num = num-1 if isprime(int)
end

puts int

