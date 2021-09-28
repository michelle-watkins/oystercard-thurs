require "oystercard"

describe Oystercard do
    it "intialise card balance" do
        expect(subject.initialise(0)).to eq(0)
    end

    describe '#top_up' do
      it { is_expected.to respond_to(:top_up).with(1).argument }
    end
    
    describe '#top_up' do
      # it "adds an amount to the balance" do
      #   subject.initialise(0)
      #   expect{ subject.top_up 1 }.to change{ subject.balance }.by 1
      # end

      it "adds an amount to the balance" do
        subject.initialise(0)
        expect(subject.top_up(10)).to eq 10
      end 
    end
end    

 