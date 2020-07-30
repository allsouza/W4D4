class TowersOfHanoi
    attr_reader :towers

    def initialize
        @towers = [[10,4,3,2,1], [10], [10]]
    end

    def move(origin, destination)
        raise "out of bounds" if !(0..2).include?(destination) || !(0..2).include?(origin)
        raise "InvalidMove" if @towers[origin][-1] > @towers[destination][-1]
        disk = @towers[origin].pop
        @towers[destination].push(disk)

    end

end