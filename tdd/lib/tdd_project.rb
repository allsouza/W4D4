require 'byebug'

class Array
    def my_uniq
        hash = Hash.new(0)
        self.each do |element|
            hash[element] += 1
        end
        hash.keys

        # self.uniq
    end

    def two_sum
        results = []

        (0...self.length).each do |start|
            (start...self.length).each do |stop|
                results << [start, stop] if (self[start] + self[stop] == 0) && (start != stop)
            end
        end
        results
    end

    def my_transpose
        size = self.length
        result = Array.new(size) {Array.new(size, [])}
        i, j = 0, 0
        while i < size
            j = 0
            while j < size
                result[j][i] = self[i][j]
                j += 1
            end
            i += 1
        end
        result
    end
end

def stock_picker(stocks)
    profit = 0
    results = [0, 0]

    (0...stocks.length).each do |buy|
        (buy...stocks.length).each do |sell|
            if (stocks[sell] - stocks[buy]) > profit
                results = [buy, sell]
                profit = stocks[sell] - stocks[buy]
            end
        end
    end

    return [stocks[results[0]],stocks[results[1]]]
end

