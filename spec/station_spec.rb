require 'station'

  describe Station do
    describe '.new'
      it "takes one argument" do
        expect(Station).to respond_to(:new).with(2).argument
      end

    it 'responds to name' do
      expect(Station).to respond_to(:name)
    end

    it 'exposes the name' do
      subject = Station.new('Homerton', 'Zone 2')
      expect(subject.name).to eq 'Homerton'
    end

    it 'exposes the zone' do
      subject = Station.new('Homerton', 'Zone 2')
      expect(subject.zone).to eq 'Zone 2'
    end

  end
