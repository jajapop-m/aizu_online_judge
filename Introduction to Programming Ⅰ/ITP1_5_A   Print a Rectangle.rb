def print_rectangle(h,w)
  h.times{puts "#"*w}
  puts ""
end

loop do
  h,w = gets.split.map(&:to_i)
  break if h == 0 && w == 0
  print_rectangle(h,w)
end
