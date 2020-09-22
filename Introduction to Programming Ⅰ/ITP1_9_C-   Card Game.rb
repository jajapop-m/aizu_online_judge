t,h=0,0
gets.to_i.times do
  a,b=gets.split
  if a==b
    t+=1
    h+=1
    next
  end
  a<b ? h+=3 : t+=3
end
puts [t,h].join ' '
