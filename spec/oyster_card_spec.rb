require 'oyster_card'
describe Oystercard do
  it { is_expected.to be_instance_of Oystercard}

  it { is_expected.to respond_to :balance }

  it "return starting balance of 0" do
    expect(subject.balance).to eq 0
  end
end
