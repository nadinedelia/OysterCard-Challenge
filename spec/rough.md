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


------
#Journey class
1. Create an array of hashes

[ {journey_1}, {journey_2}, {journey_3}]

{
  entry_station_name => station.name,
  entry_station_zone => station.zone,
  exit_station_name => station.name,
  exit_station_zone => station.zone
}

# Journey is used in:
touch_in > because it stores the entry station
touch_out > because it stores the exit station
journey > probably just gonna call the Journey class
in_journey? > need to know when you're in a journey

IRB
# when its going well
card = Oystercard.rb
card.touch_in(name, zone)
=> (in journey) + deducts penalty fare
card.touch_out(name, zone)
=> card.deduct(fare) + adds (penalty fare - actual fare)

# when its not
card.touch_in(name, zone)
=> (in journey) + deducts penalty fare

card.touch_in 
