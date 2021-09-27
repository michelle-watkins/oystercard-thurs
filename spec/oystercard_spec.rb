require "oystercard"

describe Oystercard do
    it "intialise card balance" do
        expect(subject.initialise).to eq(0)
    end

    describe '#top_up' do

      it { is_expected.to respond_to(:top_up).with(1).argument }
  
      # it "adds an amount to the balance" do
      #   expect{ subject.top_up 1 }.to change{ subject.balance }.by 1
      # end

      it "adds an amount to the balance" do
        subject.initialise
        expect(subject.top_up(10)).to eq 10
      end  
    end 
end    

 