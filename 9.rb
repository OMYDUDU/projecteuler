#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

#a2 + b2 = c2
#For example, 32 + 42 = 9 + 16 = 25 = 52.
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

(334..499).each{|i| (1..(1000-i)/2).each{ |j| puts j*(1000 -i -j)*i if i*i == j*j + (1000 -i -j)*(1000 -i -j) }}