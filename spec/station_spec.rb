require 'station'

  describe Station do
    describe '.new'
      it "takes one argument" do
        expect(Station).to respond_to(:new).with(2).argument
      end
    end
