require 'oyster_card'

describe Oystercard do
  describe '#balance' do
    it { is_expected.to respond_to :balance }

    it "returns a starting balance of 0" do
      expect(subject.balance).to eq 0
    end
  end

  describe '#top_up' do
    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'tops up card balance using passed argument as value' do
      subject.top_up(80)
      expect(subject.balance).to eq 80
    end

    it 'raises an error when balance is over maximum limit' do
      subject.top_up(Oystercard::MAX_BALANCE)
      expect { subject.top_up(1) }.to raise_error "Maximum balance of £#{Oystercard::MAX_BALANCE} has been exceeded"
    end
  end

  describe '#deduct' do
    it { is_expected.to respond_to(:deduct).with(1).argument }

    it 'deducts card balance using passed argument as value' do
      subject.top_up(80)
      subject.deduct(20)
      expect(subject.balance).to eq 60
    end
  end

  describe '#in_journey?' do
    it "does not start in a journey" do
      expect(subject).not_to be_in_journey
    end
  end

  describe '#touch_in' do
    it { is_expected.to respond_to :touch_in }

    it "sets the card to be in journey" do
      subject.touch_in
      expect(subject).to be_in_journey
    end
  end

  describe '#touch_out' do
    it { is_expected.to respond_to :touch_out }

    it "sets the card to not be in journey" do
      subject.touch_in
      subject.touch_out
      expect(subject).not_to be_in_journey
    end
  end
end
