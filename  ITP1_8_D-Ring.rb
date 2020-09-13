s = gets.chomp.split("")
p = gets.chomp
s.length.times do
  if s.push(s.shift).join.match p
    puts "Yes"
    exit
  end
end
puts "No"
