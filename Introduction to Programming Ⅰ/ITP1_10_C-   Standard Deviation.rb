loop do
  n=gets.to_i
  break if n==0
  m=gets.split.map(&:to_f)
  h=m.sum/n
  p Math.sqrt(m.inject(0){|a,i|a+(i-h)**2}/n)
end
