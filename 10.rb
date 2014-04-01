#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

#Find the sum of all the primes below two million.

def fun(int)
	a = [false] * (int-2)
	2.upto(int/2) do |m|
		if a[m-2] == false
			2.upto(int/m) do |n|
				a[m*n -2] = true
			end
		end
	end
	2.upto(int).inject(0){ |sum, n| a[n-2] ? sum : (sum+n) }
end
puts fun(2E6)