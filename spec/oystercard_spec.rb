require "oystercard"

describe Oystercard do
    it "intialise card balance" do
        expect(subject.initialise).to eq(0)
    end

end  