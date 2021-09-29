require "oystercard"

describe Oystercard do
    it "should intialise a new card with a balance of 0" do
        expect(subject.check_balance).to eq("Your balance is £0.")
    end

    describe '#top_up' do
      it { is_expected.to respond_to(:top_up).with(1).argument }

      it "should add an amount to the balance" do
        expect(subject.top_up(10)).to eq ("You added a £10 top-up.")
     end

      it "should send error if maximum limit reached" do
        maximum_balance = Oystercard::MAXIMUM_BALANCE
        subject.top_up(maximum_balance)
        expect{subject.top_up 1}.to raise_error "Maximum limit of £#{maximum_balance} reached."
      end 
    end

    describe '#deduct' do
      it { is_expected.to respond_to(:deduct).with(1).argument }

      it 'should subtract an amount from the balance' do
        expect(subject.deduct(10)).to eq ("You have used £10 of your balance.")
      end
    end

    describe '#in_journey' do
      it 'is initially not in a journey' do
        expect(subject).not_to be_in_journey
      end
    end

    describe '#touch_in' do
      it 'can touch in' do
        subject.top_up(10)
        expect(subject.touch_in).to eq("You have started your journey.")
      end

      it 'cannot touch in' do
        expect(subject.touch_in).to eq("You do not have enough balance on your card." ) 
      end
    end

    describe '#touch_out' do
      it 'can touch out' do
        subject.touch_out
        expect(subject).not_to be_in_journey
      end
    end
end

    

 