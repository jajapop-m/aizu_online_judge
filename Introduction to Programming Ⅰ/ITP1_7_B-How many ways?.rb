loop do
  count = 0
  n,m = gets.split.map(&:to_i)
  break if [n,m] == [0,0]
  (1..n-2).each do |i|
    (i+1..n-1).each do |j|
      next if m - i - j > n
      count += 1 if j < m - i - j
    end
  end
  puts count
end
