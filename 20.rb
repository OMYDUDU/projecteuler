#n! means n X (n ? 1) X ... X 3 X 2 X 1

#For example, 10! = 10 X 9 X ... X 3 X 2 X 1 = 3628800,
#and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

#Find the sum of the digits in the number 100!
#
puts 100.downto(1).inject{ |pro, n| pro * n}.to_s.each_char.inject(0){ |sum, n| sum + n.to_i}