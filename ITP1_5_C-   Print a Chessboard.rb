def print_chessboard(h,w)
  line_odd   = "#."*(w/2)
  line_odd  += "#" if w % 2 == 1
  line_even  = ".#"*(w/2)
  line_even += "." if w % 2 == 1
  # line_even = line_odd.gsub("#",",").gsub(".","#").gsub(",",".")
  h.times do |i|
    next puts line_odd if i % 2 == 0
    next puts line_even
  end
  puts ""
end

loop do
  h,w = gets.split.map(&:to_i)
  break if h == 0 && w == 0
  print_chessboard(h,w)
end
