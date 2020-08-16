n,m = gets.split.map(&:to_i)
matrix_a = []
matrix_b = []
n.times{matrix_a << gets.split.map(&:to_i)}
m.times{matrix_b << gets.to_i}

matrix_a.each do |line|
  result = 0
  ite_a = line.each
  ite_b = matrix_b.each
  m.times { result += ite_a.next * ite_b.next}
  puts result
end
