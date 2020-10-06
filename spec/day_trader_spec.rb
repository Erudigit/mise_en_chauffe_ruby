require_relative '../lib/day_trader.rb'

describe "a program that substract all the values in an array between them" do 
    it "should return the highest difference and the index of the used values" do 
        expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
    end
end