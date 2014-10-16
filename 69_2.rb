# Euler's Totient function, ¦Õ(n) [sometimes called the phi function], is used to determine the number of numbers less than n which are relatively prime to n. For example, as 1, 2, 4, 5, 7, and 8, are all less than nine and relatively prime to nine, ¦Õ(9)=6.

# n	Relatively Prime	¦Õ(n)	n/¦Õ(n)
# 2	1	1	2
# 3	1,2	2	1.5
# 4	1,3	2	2
# 5	1,2,3,4	4	1.25
# 6	1,5	2	3
# 7	1,2,3,4,5,6	6	1.1666...
# 8	1,3,5,7	4	2
# 9	1,2,4,5,7,8	6	1.5
# 10	1,3,7,9	4	2.5
# It can be seen that n=6 produces a maximum n/¦Õ(n) for n ¡Ü 10.

# Find the value of n ¡Ü 1,000,000 for which n/¦Õ(n) is a maximum.

arr = Array.new

max_n = 1
maximum = 1

(10..1E6).step(10).each do |i|
#3.upto(1E6) do |i|
	num = i-1
	2.upto(Math.sqrt(i).to_i + 1) do |j|
		if i%j == 0
			has = false
			arr.each do |k|
				if j%k == 0
					has = true
					break
				end
			end
			unless has
				#puts "i = " + i.to_s
				num -= (i-1)/j
				#puts "num -= " + ((i-1)/j).to_s
				num += arr.inject(0){|sum, n| sum + (i-1)/(j*n) } unless arr.empty?
				#puts "num += arr.inject{|sum, n| sum + (i-1)/(j*n) } " + num.to_s
				arr << j
				#puts arr.to_s				
			end
		end
	end
	if i*1.0/num >maximum
		max_n = i
		maximum = i*1.0/num
		puts max_n
		puts maximum
	end
	arr.clear
	#sleep 1
end

puts arr

#no