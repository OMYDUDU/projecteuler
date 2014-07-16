# NOTE: This problem is a significantly more challenging version of Problem 81.

# In the 5 by 5 matrix below, the minimal path sum from the top left to the bottom right, by moving left, right, up, and down, is indicated in bold red and is equal to 2297.


# 131 673 234 103 18
# 201 96  342 965 150
# 630 803 746 422 111
# 537 699 497 121 956
# 805 732 524 37  331

# Find the minimal path sum, in matrix.txt (right click and 'Save Link/Target As...'), a 31K text file containing a 80 by 80 matrix, from the top left to the bottom right by moving left, right, up, and down.

# array = IO.readlines('matrix.txt')
# array.each_index do |i|
#   array[i] = array[i].split(',').inject(Array.new){|arr, j| arr << j.to_i}
# end

array = [
[131, 673, 234,  103, 18],
[201, 96, 342,  965, 150],
[630, 803, 746, 422, 111],
[537, 699, 497, 121, 956],
[805, 732, 524, 37, 331]]

tmp = Array.new(array.length){|i| Array.new(array[0].length)}

(tmp[0].length-1).downto(0) do |j|  
  (tmp.length-1).downto(0) do |i|
    if j == (tmp[0].length-1)
      tmp[i][j] = array[i][j] 
    else
      min = tmp[i][j+1]
      shift = 0
      if i > 0
        (i-1).downto(0) do |k|
          shift += array[k][j]
          break if min < shift
          min = shift + tmp[k][j+1] if min > shift + tmp[k][j+1]
        end
      end
      shift = 0
      if tmp.length-1 > i
        (i+1).upto(tmp.length-1) do |k|
          shift += array[k][j]
          break if min < shift
          min = shift + tmp[k][j+1] if min > shift + tmp[k][j+1]
        end
      end
      tmp[i][j] = array[i][j] + min
    end
  end
end

min = tmp[0][0]
tmp.each do |x|
  min = x[0] if min > x[0]
end

puts min

#copy from 82
