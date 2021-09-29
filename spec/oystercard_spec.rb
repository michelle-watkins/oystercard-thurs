require "oystercard"

describe Oystercard do
    describe '#check_balance' do
      it "should intialise a new card with a balance of 0" do
          expect(subject.check_balance).to eq(0)
      end
    end

    describe '#top_up' do
      it { is_expected.to respond_to(:top_up).with(1).argument }

      it "should add an amount to the balance" do
        expect(subject.top_up(10)).to eq ("You added a £10 top-up.")
     end

      it "should send an error if maximum limit reached" do
        maximum_balance = Oystercard::MAXIMUM_BALANCE
        subject.top_up(maximum_balance)
        expect{subject.top_up 1}.to raise_error "Maximum limit of £#{maximum_balance} has been reached."
      end 
    end

    describe '#deduct' do
      it { is_expected.to respond_to(:deduct).with(1).argument }

      # it 'should subtract an amount from the balance' do
      #   expect(subject.deduct(10)).to eq ("You have used £10 of your balance.")
      # end
      it 'deducts an amount from the balance' do
        subject.top_up(20)
        expect {subject.deduct 3}.to change{subject.check_balance}.by -3
      end
    end

    describe '#in_journey' do
      it 'is initially not in a journey' do
        expect(subject).not_to be_in_journey
      end
    end

    describe '#touch_in' do
      it "should send an error if balance is less than the minimum balance" do
        minimum_balance = Oystercard::MINIMUM_BALANCE
        expect{subject.touch_in}.to raise_error "Minimum balance of £#{minimum_balance} needed."
      end 

      it 'can touch in' do
        subject.top_up(10)
        expect(subject.touch_in).to eq("You have started your journey.")
      end
    end

    describe '#touch_out' do
      it 'can touch out' do
        subject.touch_out
        expect(subject).not_to be_in_journey
      end

      it 'should deduct the minimum charge from the balance' do
        expect(subject.touch_out).to change{subject.check_balance}.by (-Oystercard::MINIMUM_CHARGE)
      end
    end
end