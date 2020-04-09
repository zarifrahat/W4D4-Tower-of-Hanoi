class Array
    def my_uniq
        final = []
        self.each do |ele|
             final << ele if !final.include?(ele)
        end
        final
    end

    def two_sum
        final = []
        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                final << [i,j] if self[i] + self[j] == 0
            end 
        end
        final
    end

    def my_transpose
        final = []
        (0...self.length).each do |i|
            col = []
            (0...self.length).each do |j|
                col << self[j][i]
            end
            final << col
        end
        final
    end

    def stock_picker
        curr_larg_delta = 0
        final = []

        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                if self[j] > self[i] && self[j] - self[i] > curr_larg_delta
                    curr_larg_delta = self[j] - self[i]
                    final = [i, j]
                end
            end
        end
        final
    end
end


class TowersOfHanoi
    attr_reader :pegs
    def initialize
        @pegs = [[],[],[8,7,6,5,4,3,2,1]]
    end

    def move(input)
        array_move = input.split(" ") #2 1
        valid_moves = [0, 1, 2]

        take_from = array_move[0].to_i
        put_in = array_move[1].to_i
         
        if (!valid_moves.include?(take_from) || !valid_moves.include?(put_in) || array_move.length != 2)
            raise "Must enter numbers 0 , 1 , 2"   

        end

        if pegs[put_in].length == 0
            removed_num = pegs[take_from].pop
            pegs[put_in].push(removed_num)
            
        elsif pegs[take_from].last < pegs[put_in].last
            removed_num = pegs[take_from].pop
            pegs[put_in].push(removed_num)
         else
            raise "Cant put bigger number on smaller number"       
   
        end
        p @pegs
    end

    def input
        p @pegs
        puts "Enter stack you want to take from and stack to put it in EX: '0 1'"
        input = gets.chomp
    end

    def won?
       (@pegs == [[],[8,7,6,5,4,3,2,1],[]] ) || (@pegs == [[8,7,6,5,4,3,2,1],[],[]])
    end

    def play
        until won?
            input = self.input
            self.move(input)
        end
        p "You won!"
    end
end

t1 = TowersOfHanoi.new

t1.play