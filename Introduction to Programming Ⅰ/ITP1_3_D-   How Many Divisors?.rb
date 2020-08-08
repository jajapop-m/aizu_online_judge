a,b,c = gets.split.map(&:to_i)
count = 0
(a..b).each{|n| count += 1 if c % n == 0}
puts count


a,b,c = gets.split.map(&:to_i)
divisor = []
(1..c).each {|n| divisor << n if c % n == 0}
# divisor -> [1, 2, 4, 5, 8, 10, 16, 20, 40, 80]
count = 0
(a..b).each {|n| count += 1 if divisor.include? n}
puts count
