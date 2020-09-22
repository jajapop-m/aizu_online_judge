w=gets.chomp
ans=0
loop do
  t=gets.split
  break if t[0]=='END_OF_TEXT'
  t.each{|s|ans+=1 if s.downcase==w}
end
p ans
