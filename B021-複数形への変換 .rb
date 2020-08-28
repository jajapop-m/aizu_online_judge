n = gets.to_i

def es_word(word)
  return true if word[-1] == "s"
  return true if word[-2] + word[-1] == "sh"
  return true if word[-2] + word[-1] == "ch"
  return true if word[-1] == "o"
  return true if word[-1] == "x"
  false
end

def f_word(word)
  return word.pop if word[-1] == "f"
  return word.pop(2) if word[-1] == "e" && word[-2] == "f"
  false
end

def y_word(word)
  if word[-1] == "y"
    check = word[-2]
    return false if check == "a"
    return false if check == "i"
    return false if check == "u"
    return false if check == "e"
    return false if check == "o"
    return true
  end
  false
end
n.times do
  word = gets.chomp.split("").map(&:to_s)
  if es_word(word)
    puts word.push("es").join
    next
  elsif f_word(word)
    puts word.push("ves").join
    next
  elsif y_word(word)
    word.pop
    puts word.push("ies").join
    next
  else
    puts word.push("s").join
  end
end
