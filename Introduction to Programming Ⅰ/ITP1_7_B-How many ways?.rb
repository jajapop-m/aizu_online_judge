loop do
  count = 0
  n,x = gets.split.map(&:to_i)
  break if [n,x] == [0,0]
  (1..n-2).each do |i|
    (i+1..n-1).each do |j|
      next if x - i - j > n
      count += 1 if j < x - i - j
    end
  end
  puts count
end

# loop do
#   n,x=gets.split.map(&:to_i)
#   break if [n,x]==[0,0]
#   count=0
#   (1..n-2).each do |i|
#     (i+1..n-1).each do |j|
#       (j+1..n).each do |k|
#         count +=1 if i+j+k==x
#       end
#     end
#   end
#   p count
# end
