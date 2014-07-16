#The series, 11 + 22 + 33 + ... + 1010 = 10405071317.
#Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.

def truncate(i)
	if i<1E11
		return i
	else
		return i%1E11
	end
end


i, sum = 1, 0
while i<1000
	if i%10 != 0
		j,pro, ti = 0,1, truncate(i)
		while j<i
			pro *= ti
			pro = truncate(pro)
			j += 1
		end
		#puts pro
		sum += pro
	end
	i += 1
end
puts truncate(sum).to_s.split('.')[0]
