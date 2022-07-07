class Hanoi

    def initialize(n = 3)
        board = Array.new(n){Array.new()}
        count = n
        while count > 0
             board[0] << count
             count -= 1
        end
        @board = board
        @n = n
    
    end

    def won?
        if @board[-1].length == @n
            system ("clear")
            puts "YOU WON"
            print_board
            return true
        end
        return false
    end

    def play
        system("clear")
        puts "welcome to towers of Hanoi! move the numbers to each tower"
        puts "you can't place a bigger number on top of a smaller one!"
        puts
        print_board
        sleep (6)
        until won?
            system ("clear")
            print_board 
            puts
            p "choose from tower:"
            from_tower = gets.chomp.to_i
            p "choose to tower:"
            to_tower = gets.chomp.to_i
            if valid_move?(from_tower,to_tower)
             piece = @board[from_tower].pop
             @board[to_tower].push(piece) 
            else
                puts "invalid move"
                sleep (1)
                puts "try again"
                sleep (1)
            end

        end
    end

    def valid_move?(from_tower,to_tower)
        return true if @board[to_tower].empty?
        return false if @board[to_tower][-1] < @board[from_tower][-1]
        true
        
    end

    def print_board
        @board.each_with_index { |row, i|  puts "Tower #{i}: #{row}" }
           
    end

end
 new = Hanoi.new(6)

new.play