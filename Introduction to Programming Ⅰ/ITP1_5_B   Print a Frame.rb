def print_frame(h,w)
  h.times do |i|
    next puts "#"*w if i == 0 || i == h-1
    puts "#" + "."*(w-2) + "#"
  end
  puts ""
end

loop do
  h,w = gets.split.map(&:to_i)
  break if h == 0 && w == 0
  print_frame(h,w)
end
