n,num = gets.split.map(&:to_i)
max,min = 0,Float::INFINITY
n.times do
  x = num.dup
  a,b,c,d = gets.split.map(&:to_i)
  x -= a
  if x < 0
    max = [max,b].max
    min = [min,b].min
  end
  count = 0
  while x >= 0
    x -= c
    count += 1
    if x < 0
      max = [max,b + d * count].max
      min = [min,b + d * count].min
    end
  end
end

puts [min,max].join(" ")
