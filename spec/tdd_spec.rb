require "tdd.rb"

describe "#my_unique" do
    it "removes duplicate elements from an array" do
        expect(my_unique([1,2,1,3,3])).to eq([1,2,3])
    end

    it "returns a new array" do 
        expect([1,2,1,3,3].object_id).to_not be(my_unique([1,2,1,3,3]).object_id)
    end
end

describe "#two_sum" do 
    it "finds one pair that equals zero" do
        expect(two_sum([-1,0,2,2,1])).to eq([[0,4]])
    end

    it "returns an empty array when there are no zero sum pairs"do
        expect(two_sum([1,2,3,4,5])).to eq([])
    end
    

    it "pairs are returned with the smallest index first" do 
        expect(two_sum([-1,0,2,-2,1])).to_not eq([[4,0], [3,2]])
    end

    it "no duplicate pairs" do 
        expect(two_sum([-1,0,2,-2,1])).to eq([[0,4], [2,3]])
    end
end

describe "#my_transpose" do
    let(:rows) {[[0,1,2],[3,4,5],[6,7,8]] }
    let(:col) {[[0,3,6],[1,4,7],[2,5,8]]}

    # before (:each) do
    #     expect(my_transpose).not_to receive(:transpose)
    # end

    # it "does not use built in .transpose method" do
    #     expect(my_transpose).not_to receive(:transpose)
    # end

    it "does return itself for small arrays" do
        expect(my_transpose([[2]])).to eq([[2]])
    end

    it "it works for matrices of any size" do
        expect(my_transpose(rows)).to eq(col)
    end

end 

describe "#stockpicker" do

    it "returns a pair of days" do
        expect(stockpicker([1,1])).to eq([0,1])
    end

    it "finds the pair that gives best profit" do
        expect(stockpicker([1,2,3,4,5])).to eq([0,4])
    end

    it "correctly assumes you cannot sell before buying " do
        expect(stockpicker([5,1,3,4,2])).to eq([1,3])
    end


end

