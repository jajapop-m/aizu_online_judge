n = gets.to_i
d = gets.split.map(&:to_i)
ans = 6
max = []
d.each_cons(7) do |di|
  if di.count(0) >= 2
    ans += 1
  else
    max << ans
    ans = 6
  end
end
max << ans
ans = max.max
puts ans == 6 ? 0 : ans
