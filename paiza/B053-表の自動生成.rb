h,w = gets.split.map(&:to_i)
line = gets.split.map(&:to_i)
line2 = gets.split.map(&:to_i)
right = line[1] - line[0]
right2 = line2[1] - line2[0]

(w-2).times do
  line << line[-1] + right
  line2 << line2[-1] + right2
end

puts line.join(" "),line2.join(" ")

(h-2).times do
  line_i = []
  w.times do |i|
    line_i << line2[i] + (line2[i] - line[i])
  end
  line = line2
  line2 = line_i
  puts line_i.join(" ")
end
