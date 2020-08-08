_ = gets.to_i
ary = gets.split.map(&:to_i)
puts "#{ary.min} #{ary.max} #{ary.sum}"
