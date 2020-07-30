require 'rspec'
require 'towers_of_hanoi'

describe "Towers of Hanoi" do
    subject(:game) { TowersOfHanoi.new }
    
    describe "#initialize" do
        it "creates three empty array instances" do
            expect(game.towers.length).to eq(3)
        end

        context "the first tower has all disks" do
            it "total disks are 4" do
                expect(game.towers[0].count).to eq(5)
            end

            it "goes from largest(bottom) to smallest(top)" do
                expect(game.towers[0]).to eq( [10,4,3,2,1] )
            end
        end
    end

    describe "#move(origin, destination)" do
    
        it "should move top disk from one tower to another" do
            game.move(0,2)
            expect(game.towers[0][-1] == 2 && game.towers[2][-1] == 1).to be true
        end

        context "should not place larger disks on top of smaller disks" do
            it "raise an 'InvalidMove' error if attempted" do
               game.move(0,2) 
               expect { game.move(0,2) }.to raise_error("InvalidMove")
            end
        end

        it "should raise an error when origin or destination is out of bounds" do
            expect { game.move(3,3) }.to raise_error("out of bounds")
        end
    end

    describe "#won?" do
        it "should return true if all disks are located in the last tower and in order" do
            expect(game.win?).to eq(true).and(game.towers[2]).to eq( [10,4,3,2,1] )
        end
        it "returns false if not all ordered in last tower" do
            expect(game.win?).to eq(false).and(game.towers[2]).to_not eq( [10,4,3,2,1] )
        end
    end


end