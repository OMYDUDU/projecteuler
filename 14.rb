#The following iterative sequence is defined for the set of positive integers:

#n -> n/2 (n is even)
#n -> 3n + 1 (n is odd)

#Using the rule above and starting with 13, we generate the following sequence:

#13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
#It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

#Which starting number, under one million, produces the longest chain?

#NOTE: Once the chain starts the terms are allowed to go above one million.

def write_list(list, array)
	start = 1
	start = list[array[-1] - 1] if list[array[-1] - 1] != 0
	0.upto(array.length - 1) do |i| 
		if array[i] <1E6 && list[array[i] - 1] == 0
			list[array[i] - 1] = array.length - i - 1 + start
		end
	end
end

list = [0] * (1E6 - 1)
longest_chain = 0
longest_key = 3
key = 1E6
loop do
	key -=1
	m = key
	if list[m-1] == 0
		array = []
		array << m
		loop do
			if m % 2 == 0
				m = m/2
			else
				m = 3*m + 1
			end

			array << m			

			if m< 1E6 && list[ m - 1] != 0
				write_list(list, array)
				break
			end			

			break if m == 1
		end

		write_list(list, array)

		if list[key -1] > longest_chain
			longest_chain = list[key -1]
			longest_key = key
		end
	end
	break unless key > 1 
end

puts longest_chain
puts longest_key