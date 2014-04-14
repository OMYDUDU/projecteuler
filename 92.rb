#A number chain is created by continuously adding the square of the digits in a number to form a new number until it has been seen before.

#For example,

#44 -> 32 -> 13 -> 10 -> 1 -> 1
#85 -> 89 -> 145 -> 42 -> 20 -> 4 -> 16 -> 37 -> 58 -> 89

#Therefore any chain that arrives at 1 or 89 will become stuck in an endless loop. What is most amazing is that EVERY starting number will eventually arrive at 1 or 89.

#How many starting numbers below ten million will arrive at 89?

array = [0] * 570

i = 1
loop do
	if array[i] == 0
		tmp = []
		circular = false
		tmp_i = i
		loop do
			tmp << tmp_i
			tmp_i = tmp_i.to_s.split(//).inject(0){|sum, n| sum + (n.to_i) ** 2}
			if tmp_i == 1 || tmp_i == 89 || array[tmp_i] != 0
				circular = (array[tmp_i] ==0 ? (tmp_i == 89 ? true : false) : array[tmp_i])
				break
			end
		end

		tmp.each {|x| array[x] = circular }
	end
	i += 1
	break if i > 569
end

num = array.count(true)

 while i < 1E7
 	num +=1 if array[i.to_s.split(//).inject(0){|sum, n| sum + (n.to_i) ** 2}]
 	i += 1
 end

 puts num
