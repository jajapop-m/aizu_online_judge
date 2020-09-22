s=gets.chomp
gets.to_i.times do
  c=gets.split
  a,b=c[1,2].map(&:to_i)
  case c[0]
  when 'replace'
    s[a..b]=c[3]
  when 'reverse'
    s[a..b]=s[a..b].reverse
  when 'print'
    puts s[a..b]
  end
end
