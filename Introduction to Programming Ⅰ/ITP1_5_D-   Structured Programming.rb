num = gets.to_i

def check_three(n)
  return false if n == 0
  n /= 10
  return true if n % 10 == 3
  check_three(n)
end

(1..num).each do |n|
  print " #{n}" if n % 3 == 0 || n % 10 == 3 || check_three(n)
end
puts ""
