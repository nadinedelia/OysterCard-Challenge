
class Oystercard
  attr_reader :balance

  MAX_BALANCE = 90

  def initialize
    @balance = 0
    @journey = false
  end

  def top_up(value)
    fail "Maximum balance of £#{MAX_BALANCE} has been exceeded" if max_balance_exceeded?(value)
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

  private

  def max_balance_exceeded?(top_up_value)
    @balance + top_up_value > MAX_BALANCE
  end
end
