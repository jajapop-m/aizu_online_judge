loop do
  s=gets.chomp
  break if s=='-'
  gets.to_i.times do
    a=gets.to_i
    s=s[a...s.size]+s[0,a]
  end
  puts s
end
