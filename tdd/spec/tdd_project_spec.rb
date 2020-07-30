require 'tdd_project'
require 'rspec'

describe "#my_uniq" do
    subject(:arr) { [1,2,1,3,3] }
    context "should not use Arra#uniq" do
        before(:each) do
            expect(arr).not_to receive(:uniq)
            expect_any_instance_of(Array).not_to receive(:uniq)
        end
    
        it "whatever" do
            arr.my_uniq
        end
    end

    it "does not contain duplicate values" do
        expect(arr.my_uniq).to eq([1,2,3])
    end

    it "returns the elements in the same order that they appeared" do
        expect(arr.my_uniq).to eq([1,2,3])
    end

    it "returns a new array" do
        expect(arr.my_uniq).to_not be(arr)
    end
    
end

describe "#two_sum" do
    subject(:arr) { [-1, 0 , 2, -2, 1] }
    it "returns a 2-D array of index pairs" do
        expect(arr.two_sum).to include([2, 3])
    end

    context "returns it from the smallest index to the greater index" do
        let(:arr2) { [-2, 1, 2, 2] }
        it "smaller first elements come first" do
            expect(arr.two_sum).to eq([[0, 4], [2, 3]])
        end

        it "when the first elements are the same, smaller second element comes first" do
            expect(arr2.two_sum).to eq([[0, 2], [0, 3]])
        end 
    end
end

describe "#my_transpose" do 
    subject(:grid) {[
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ]}

    it "converts rows to columns" do
        expect(grid.my_transpose).to eq([
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]
          ])
    end
end

describe "#stock_picker(stocks)" do
    let(:stock) { [10, 1, 20, 1, 0, 4, 2, 5, 15] }
    let(:answer) { stock_picker(stock) }
    it "receives an array of stocks" do
        expect do
            stock_picker(stock)
            (stocks[3]).to_not be(nil)
        end
    end

    it "looks for the cheapest price to buy" do
        expect(answer[0]).to eq(1)
    end

    it "looks for the most expensive day to sell." do
        expect(answer[1]).to eq(20)
    end

    it "can only sell after it buys" do
        expect(stock.index(answer[0])).to be < (stock.index(answer[1]))
    end
end

# describe "Array#my_select" do
#   let(:arr) { [1, 2, 3] }

#   before(:each) do
#     expect(arr).not_to receive(:select)
#     expect(arr).not_to receive(:dup)
    
#     expect_any_instance_of(Array).not_to receive(:select!)
#     expect_any_instance_of(Array).not_to receive(:reject)
#     expect_any_instance_of(Array).not_to receive(:reject!)
#   end