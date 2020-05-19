An error occurred while loading ./spec/oyster_card_spec.rb.
Failure/Error:
  describe Oystercard do

  end

NameError:
  uninitialized constant Oystercard
# ./spec/oyster_card_spec.rb:1:in `<top (required)>'

IRB
card = Oystercard.rb
card.balance
=> 0
card.touch_in
=> Some error


card = Oystercard.rb
card.balance
=> min_balance
card.touch_in
(in journey)
=> card.touch_out
card.deduct(min_balance)

IRB
card = Oystercard.new
card.top_up(MIN_BALANCE)
card.touch_in(station)
=> @entry_station = station
card.entry_station
=> station
card.touch_out
=> nil

IRB
card = Oystercard.new
card.top_up(MIN_BALANCE)
card.touch_in(station_a)
=> @entry_station = station_a
card.touch_out(station_b)
=> @exit_station = station_b
card.journey
=> {station_a => station_b}




hash = { }

# touch in
@entry_station

# touch out
@exit_station

#journey
journey_hash = {@entry_station, @exit_station}
return journey_hash


IRB
station = Station.new(name, zone)
