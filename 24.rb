#A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

#012   021   102   120   201   210

#What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

def lexicographic_permutation(million, size)
	array = [0] * size

	pro = 1
	1.upto(array.length - 1) { |x| array[x] = pro *= x }
	array.reverse!
	#puts array

	res = [0] * size
	res.each_index { |x| res[x] = x }

	pro = million-1
	0.upto(array.length - 2) do |x|
		tmp = pro/array[x]
		pro %= array[x]
		array[x] = tmp
	end
	array[-1] = pro
	#puts array

	0.upto(array.length - 1) do |x|
		array[x] = res[array[x]]
		res.delete(array[x])
	end

	return array.inject(''){ |str, n| str << n.to_s}
end

puts lexicographic_permutation(1000000, 10)



