_ = gets.to_i
puts gets.split.map(&:to_s).reverse.join(" ")


# _ = gets.to_i
# a = gets.split.map(&:to_i)
# ans = []
# a.reverse_each {|num| ans << num}
# puts ans.join(" ")
#
#
#
# n = gets.to_i
# a = gets.split.map(&:to_i)
# [*0..n-1].reverse_each do |i|
#   print a[i].to_s
#   print " " if i != 0
# end
# puts ""
