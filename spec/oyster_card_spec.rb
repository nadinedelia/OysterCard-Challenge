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
      subject.top_up(80)
      expect(subject.balance).to eq 80
    end

    it 'raise an error when top_up over maximum limit 90' do
      expect { subject.top_up(91) }.to raise_error "exceed max balance limit #{Oystercard::MAX_BALANCE}"
    end
  end

  describe '#deduct' do
    it { is_expected.to respond_to(:deduct).with(1).argument }

    it 'deducts card balance using passed value argument' do
      subject.top_up(80)
      subject.deduct(20)
      expect(subject.balance).to eq 60
    end
  end
end
