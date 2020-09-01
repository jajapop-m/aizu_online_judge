n,x = gets.split.map(&:to_i)
list = []
m_list = []
n.times{ list << gets.to_i }
money = [nil,nil]
min = Float::INFINITY
count,count_max = 0,0
(0...2**n).each_with_index do |i,index|
  money = [0,x.dup]
  count = 0
  i.to_s(2).rjust(n,"0").each_char.with_index do |s,idx|
    m_list[index] = money
    next if s == "0"
    m_list[index][1] >= list[idx] ? m_list[index][1] -= list[idx] : break
    m_list[index][0] += 1
    count += 1
    count_max = [count_max,count].max
  end
end
result = Float::INFINITY
m_list.each do |res|
  next if res[0] != count_max
  result = [result,res[1]].min
end
puts result
