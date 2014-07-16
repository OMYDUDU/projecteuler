#8In the 5 by 5 matrix below, the minimal path sum from the top left to the bottom right, by only moving to the right and down, is indicated in bold red and is equal to 2427.


#131 673 234 103 18
#201 96  342 965 150
#630 803 746 422 111
#537 699 497 121 956
#805 732 524 37  331

#Find the minimal path sum, in matrix.txt (right click and 'Save Link/Target As...'), a 31K text file containing a 80 by 80 matrix, from the top left to the bottom right by only moving right and down.
array = IO.readlines('matrix.txt')
array.each_index do |i|
  array[i] = array[i].split(',').inject(Array.new){|arr, j| arr << j.to_i}
end

tmp = Array.new(array.length){|i| Array.new(array[0].length)}

(tmp.length-1).downto(0) do |i|
  (tmp[0].length-1).downto(0) do |j|
    if i == tmp.length-1 && j == (tmp[0].length-1)
      tmp[i][j] = array[i][j] 
    elsif i == tmp.length-1
      tmp[i][j] = array[i][j] + tmp[i][j+1]
    elsif j == (tmp[0].length-1)
      tmp[i][j] = array[i][j] + tmp[i+1][j]
    else
      tmp[i][j] = array[i][j] + (tmp[i+1][j] < tmp[i][j+1] ? tmp[i+1][j] : tmp[i][j+1])
    end
  end
end
puts tmp[0][0]

#right