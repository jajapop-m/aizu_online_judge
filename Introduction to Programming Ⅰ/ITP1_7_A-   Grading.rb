loop do
  m,f,r = gets.split.map(&:to_i)
  break if m == -1 && f == -1 && r == -1
  next puts "F" if m == -1 || f == -1 || m+f < 30
  next puts "D" if m+f < 50 && r < 50
  next puts "C" if m+f < 65
  next puts "B" if m+f < 80
  next puts "A"
end
