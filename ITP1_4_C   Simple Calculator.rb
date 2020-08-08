loop do
  cal = gets
  # break if cal =~ /\?/
  break if cal.split[1] == "?"
  puts eval(cal)
end
