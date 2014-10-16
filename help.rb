
def p2(array)
	n = 0
	array.each do |i|
		str = n.to_s 
		str << " = "
		i.each do |j|
			str << j.to_s
			str << "  "
		end
		puts str
		n += 1
	end
end



def p1(array)
	n = 0
	str = ''

	array.each_index do |i|
		str << array[i].to_s
		str << " "	
		if i % 50 == 0
			puts str
			str = ''
		end
	end
end





