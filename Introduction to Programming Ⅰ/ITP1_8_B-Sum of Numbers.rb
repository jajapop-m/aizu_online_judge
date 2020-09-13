loop do
  num = gets.chomp.split("")
  puts num != ["0"] ? num.map(&:to_i).sum : exit
end
