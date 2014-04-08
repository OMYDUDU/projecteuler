#In England the currency is made up of pound, E, and pence, p, and there are eight coins in general circulation:

#1p, 2p, 5p, 10p, 20p, 50p, ¡ê1 (100p) and ¡ê2 (200p).
#It is possible to make ¡ê2 in the following way:

#1X¡ê1 + 1X50p + 2X20p + 1X5p + 1X2p + 3X1p
#How many different ways can E2 be made using any number of coins?

def consist(price, level)
	return 1 if level == 7
	array = [200,100,50,20,10,5,2,1]
	num = price/array[level]
	return 0.upto(num).inject(0){|sum,n| sum + consist(price - n * array[level], level+1)}
end

puts consist(200, 0)