#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 ¡Á 99.
#Find the largest palindrome made from the product of two 3-digit numbers.

def larpalindrome
	imax, jmax, lmax = 100, 100, 10000

	999.downto(100) do |i|
		i.downto(100) do |j|
			imax, jmax, lmax = i, j, i*j if (i*j).to_s == (i*j).to_s.reverse && i*j > lmax
		end
		return lmax.to_s + " " + imax.to_s + " " + jmax.to_s if jmax > i
	end
end

puts larpalindrome


