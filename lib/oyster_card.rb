
class Oystercard

  MAX_BALANCE = 90
  attr_reader :balance

  def initialize
    @balance = 0
    @journey = false
  end

  def top_up(value)
    raise "exceed max balance limit #{MAX_BALANCE}" if @balance + value > MAX_BALANCE
    @balance += value
  end

  def deduct(value)
    @balance -= value
  end

  def touch_in
    @journey = true
  end

  def touch_out
    @journey = false
  end

  def in_journey?
    @journey
  end
end
