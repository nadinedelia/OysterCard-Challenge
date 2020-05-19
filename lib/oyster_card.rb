
class Oystercard
  attr_reader :balance, :entry_station

  MAX_BALANCE = 90
  MIN_BALANCE = 1

  def initialize
    @balance = 0
  end

  def top_up(value)
    fail "Maximum balance of £#{MAX_BALANCE} has been exceeded" if max_balance_exceeded?(value)
    @balance += value
  end

  def touch_in(station)
    fail "Balance is bellow minimum threshold" if @balance < MIN_BALANCE

    @entry_station = station

  end

  def touch_out
    deduct(MIN_BALANCE)

    @entry_station = nil
  end

  def in_journey?
    @entry_station != nil
  end

  private

  def deduct(value)
    @balance -= value
  end

  def max_balance_exceeded?(top_up_value)
    @balance + top_up_value > MAX_BALANCE
  end
end
