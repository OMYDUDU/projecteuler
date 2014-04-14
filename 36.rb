#The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

#Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

#(Please note that the palindromic number, in either base, may not include leading zeros.)
sum = 0
1.upto(1E6 -1){|x| sum += x if x.to_s == x.to_s.reverse && x.to_s(2) == x.to_s(2).reverse }
puts sum