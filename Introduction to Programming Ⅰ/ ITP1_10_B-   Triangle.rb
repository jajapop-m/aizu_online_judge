a,b,c=gets.split.map(&:to_i)
r=Math::PI*c/180
p a*b*Math.sin(r)/2
p a+b+Math.sqrt(a**2+b**2-2*a*b*Math.cos(r))
p b*Math.sin(r)
