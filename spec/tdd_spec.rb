require "tdd.rb"

describe "#my_unique" do
    it "removes duplicate elements from an array" do
        expect ([1,2,1,3,3].my_unique).to eq([1,2,3])

    end

    it "returns a new array" do 
        expect ([1,2,1,3,3].object_id).to_not be([1,2,1,3,3].my_unique.object_id)
    end
end
