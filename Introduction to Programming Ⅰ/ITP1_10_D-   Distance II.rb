n=gets.to_i
x=gets.split.map(&:to_f)
y=gets.split.map(&:to_f)
d1,d2,d3,d4=0,0,0,0
(0...n).each do |i|
  l=(x[i]-y[i]).abs
  d1+=l
  d2+=l**2
  d3+=l**3
  d4=[d4,l].max
end
p d1
p Math.sqrt d2
p Math.cbrt d3
p d4
