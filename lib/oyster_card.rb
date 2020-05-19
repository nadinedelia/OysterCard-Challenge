
class Oystercard
  attr_reader :balance, :entry_station, :exit_station

  MAX_BALANCE = 90
  MIN_BALANCE = 1

  def initialize
    @balance = 0
    @journey_hash = {}
  end

  def top_up(value)
    fail "Maximum balance of £#{MAX_BALANCE} has been exceeded" if max_balance_exceeded?(value)

    @balance += value
  end

  def touch_in(station)
    fail "Balance is bellow minimum threshold" if @balance < MIN_BALANCE

    @entry_station = station
    @journey_hash[@entry_station] = nil
  end

  def touch_out(station)
    deduct(MIN_BALANCE)
    @exit_station = station
    @journey_hash[@entry_station] = station
    @entry_station = nil
  end

  def in_journey?
    @entry_station != nil
  end

  def journey
    @journey_hash
  end

  private

  def deduct(value)
    @balance -= value
  end

  def max_balance_exceeded?(top_up_value)
    @balance + top_up_value > MAX_BALANCE
  end
end
