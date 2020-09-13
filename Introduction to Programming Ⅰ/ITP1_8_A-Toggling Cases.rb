gets.each_char do |c|
  print c.upcase == c ? c.downcase : c.upcase
end
