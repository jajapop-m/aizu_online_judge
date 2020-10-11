class Dice
  attr_accessor :pips,:up,:down,:n,:s,:e,:w
  def initialize(numbers)
    @up   = numbers[0]
    @down = numbers[5]
    @s    = numbers[1]
    @n    = numbers[4]
    @e    = numbers[2]
    @w    = numbers[3]
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

  def search(num_up,num_n)
    search_up(num_up)
    search_forward(num_n)
    self
  end

  private

    def search_up(num_up)
      return if up == num_up
      3.times do
        turn_n
        return if up == num_up
      end
      3.times do
        turn_e
        return if up == num_up
      end
      nil
    end

    def search_forward(num_n)
      return if n == num_n
      3.times do
        turn_e
        turn_n
        turn_w
        return if n == num_n
      end
      nil
    end
end

dice = Dice.new(gets.split.map(&:to_i))
q=gets.to_i
q.times do
  num_up,num_n=gets.split.map(&:to_i)
  puts dice.search(num_up,num_n).w
end
