
array = IO.read('words.txt').split(',').each{|i| i.delete! '"'}

int = []
2.upto(40) do |i| 
	int << i*(i+1)/2
end
puts int