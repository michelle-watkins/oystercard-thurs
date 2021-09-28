require "oystercard"

describe Oystercard do
    it "intialise card balance with 0" do
        expect(subject.check_balance).to eq("Your balance is £0.")
    end

    describe '#top_up' do
      it { is_expected.to respond_to(:top_up).with(1).argument }

      it "add an amount to the balance" do
        expect(subject.top_up(10)).to eq ("You added a £10 top-up.")
      end 
    end
end
    

 