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

      it "send error if maximum limit reached" do
        maximum_balance = Oystercard::MAXIMUM_BALANCE
        subject.top_up(maximum_balance)
        expect{subject.top_up 1}.to raise_error "Maximum limit of £#{maximum_balance} reached."
      end 
    end
end

    

 