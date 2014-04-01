#If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

#If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

#NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

word_hash = {
	1 => 3, # one
	10 => 3, # ten
	11 => 6, # eleven
	12 => 6, # twelve
	13 => 8, # thirteen
	14 => 8, # fourteen
	15 => 7, # fifteen
	16 => 7, # sixteen
	17 => 9, # seventeen
	18 => 8, # eighteen
	19 => 8, # nineteen
	2 => 3, # two
	20 => 6, # twenty
	3 => 5, # three
	30 => 6, # thirty
	4 => 4, # four
	40 => 5, # forty
	5 => 4, # five
	50 => 5, # fifty
	6 => 3, # six
	60 => 5, # sixty
	7 => 5, # seven
	70 => 7, # seventy
	8 => 5, # eight
	80 => 6, # eighty
	9 => 4, # nine
	90 => 6, # ninety
	100 => 7, # hundred
	1000 => 8, # thousand
	"and" => 3, # and
}

num_hash = Hash.new

word_hash.each_key{ |k,v| num_hash[k] = 0 }

num_hash[1] += 1 # for 1000
num_hash[1000] += 1 # for 1000


1.upto(999) do |i|
	if i/100 != 0
		num_hash[i/100] += 1
		num_hash[100] += 1
		if i % 100 != 0
			num_hash["and"] += 1
		else
			next
		end
		i = i % 100
	end

	if i/10 != 0
		if i/10 == 1 || i % 10 == 0
			num_hash[i] += 1			
		else
			num_hash[i/10*10] += 1
			num_hash[i%10] += 1
		end
	else
		num_hash[i] += 1
	end
end

puts word_hash.each_key.inject(0){|sum, n| sum + word_hash[n] * num_hash[n]}