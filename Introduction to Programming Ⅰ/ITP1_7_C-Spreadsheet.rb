r,c = gets.split.map(&:to_i)
line = Array.new(r+1){[0]*(c+1)}
r.times do |i|
  l = gets.split.map(&:to_i)
  line[i] = l << l.sum
  line[r] = line[r].zip(l).map{|a| a.sum }
end
line.each{|l| puts l.join(" ") }
