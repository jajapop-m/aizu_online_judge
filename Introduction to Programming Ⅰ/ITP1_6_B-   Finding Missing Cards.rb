# ver1
cards = {}
["S","H","C","D"].each do |pattern|
  (1..13).each do |num|
    cards[pattern] ||= []
    cards[pattern] << num
  end
end

n = gets.to_i
n.times do
  pattern,num = gets.split
  cards[pattern].delete(num.to_i)
end
cards.each do |pattern,nums|
  nums.each {|num| puts pattern + " " + num.to_s}
end


# ver2
# cards = []
# ["S","H","C","D"].each do |pattern|
#   (1..13).each do |num|
#     cards << pattern + " " + num.to_s
#     # cards << [pattern,num.to_s]
#   end
# end
#
# gets.to_i.times {cards.delete(gets.chomp)}
# # gets.to_i.times {cards.delete(gets.split)}
#
# puts cards
# # puts cards.each {|card| puts card.join(" ")}
