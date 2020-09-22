class Dice
  attr_accessor :pips,:up,:down,:n,:s,:e,:w
  def initialize(numbers)
    @pips=Array.new
    numbers.each {|n|pips << Pip.new(n)}
    @up = pips[0]
    @down = pips[5]
    @s = pips[1]
    @n = pips[4]
    @e = pips[2]
    @w = pips[3]
  end

  def turn_n
    @up,@down,@s,@n = s,n,down,up
  end

  def turn_s
    @s,@n,@down,@up = up,down,s,n
  end

  def turn_w
    @up,@down,@e,@w = e,w,down,up
  end

  def turn_e
    @e,@w,@down,@up = up,down,e,w
  end
end

class Pip
  attr_accessor :num
  def initialize(num)
    @num = num
  end
end

dice = Dice.new(gets.split.map(&:to_i))
gets.chomp.each_char do |c|
  case c
  when "N"
    dice.turn_n
  when "S"
    dice.turn_s
  when "E"
    dice.turn_e
  when "W"
    dice.turn_w
  end
end
p dice.up.num
