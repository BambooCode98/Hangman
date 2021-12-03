

class Hangman

    def initialize
        @letter_bank = ('a'..'z').to_a
        @word = word_bank.sample
        @attempts = 10
        @blank_spaces = "_" * @word.length
    end

    def input_number(input)
        input.to_i - 1
    end
        

    def word_bank
        %w[the then buy pop ridge trough low high cold hot] #file text would go here
    end

    def menu
        #to be finished at the end
    end

    def guesses(letter)

        if @word.include? letter
            p "correct!"
            @blank_spaces.length.times do |index|
                @blank_spaces[index] = letter if letter == @word[index]
            end
            @letter_bank.delete(letter)
        else
            @attempts -= 1
            puts "you have #{@attempts} attempts remaining"
        end
    end

    def play

        until @blank_spaces == @word do
            # p @word
            p @letter_bank
            puts "Choose a letter: "
            letter = gets.chomp

            if @attempts > 0 
                guesses(letter)
                p "#{@blank_spaces}"
                
            else @attempts == 0
                puts "game over"
            end
        end
    end





end


game = Hangman.new
game.play