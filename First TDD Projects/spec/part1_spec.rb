require "part1"
require "rspec"

describe Array do
    
    describe "Array#my_uniq" do 
        let(:array1) {[1, 2, 1, 3, 3]}
        it "removes dups" do
            expect(array1.my_uniq).to eq([1,2,3])
        end
    end 

    describe "Array#two_sum" do
        let(:array2) {[-1, 0, 2, -2, 1]}
        it "returns a two-dim array of pair positions that sum to zero" do 
            expect(array2.two_sum).to eq([[0, 4], [2, 3]])
        end
    end

    describe "Array#my_transpose" do
        let(:array3) {
        [[0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]]}
        it "converts columns into rows" do
            expect(array3.my_transpose).to eq( 
                [[0, 3, 6],
                [1, 4, 7],
                [2, 5, 8]])
        end
    end

    describe "Array#stock_picker" do
        let(:array4) {[10,6,2,7,3,4,5]}
        it "picks the most profitable pair of days" do
            expect(array4.stock_picker).to eq([2,3])
        end
    end
end

describe TowersOfHanoi do
    subject(:towers) {TowersOfHanoi.new}

    describe "#initialize" do 
        it "should set @pegs to an array of two empty pegs and a peg with numbers 8 through 1" do
            expect(towers.instance_variable_get(:@pegs)).to eq([[],[],[8,7,6,5,4,3,2,1]])
        end
    end

    describe "#move(input)" do
        
        it "raises an error if input is not EX: '0 1'" do
            input = "t 1"

            expect{towers.move(input)}.to raise_error("Must enter numbers 0 , 1 , 2")
        end

        
    end

    describe "#won?" do
        let(:pegs1) {[[],[8,7,6,5,4,3,2,1],[]]}
        let(:pegs2) {[[8,7,6,5,4,3,2,1],[],[]]}

        it "returns true if array 0 or array 1 have all the numbers in order" do
            expect(towers.pegs).to eq(pegs1 || pegs2)
        end
    end     
         
end

