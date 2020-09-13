count = {}
("a".."z").each {|l| count[l] = 0 }
letter = ""
while l = gets
  letter << l
end
letter.each_char do |c|
  # count[c.downcase] += 1 if ('a'..'z').include?(c.downcase)
  count[c.downcase] += 1 if c.downcase.match(/[a-z]/)
end
count.each{|a| puts a.join(" : ")}
