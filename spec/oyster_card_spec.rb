require 'oyster_card'
describe Oystercard do
  describe '#balance' do
    it { is_expected.to be_instance_of Oystercard}

    it { is_expected.to respond_to :balance }

    it "return starting balance of 0" do
      expect(subject.balance).to eq 0
    end
  end

  describe '#top_up' do
    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'tops up card balance using passed value argument' do
      subject.top_up(100)
      expect(subject.balance).to eq 100
    end
  end
end
