def perfect_or_nearly?(n)
  sum = 0
  (1...n).each do |i|
    sum += i if n % i == 0
  end
  return 'perfect' if n == sum
  return 'nearly'  if n == sum + 1 || n == sum - 1
  'neither'
end

(gets.to_i).times do
  puts perfect_or_nearly? gets.to_i
end
