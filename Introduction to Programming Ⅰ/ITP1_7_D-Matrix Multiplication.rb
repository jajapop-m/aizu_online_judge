n,m,l = gets.split.map(&:to_i)
a,b = [],[]
n.times { a << gets.split.map(&:to_i) }
m.times { b << gets.split.map(&:to_i) }
ans = Array.new(n){[0]*l}
a.each_with_index do |aa,i|
  b.transpose.each_with_index do |bb,j|
    each_a = aa.each
    each_b = bb.each
    m.times do
      ans[i][j] += each_a.next * each_b.next
    end
  end
end
ans.each {|answer| puts answer.join " " }
