

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
        weather_words = File.readlines("word_list.txt", chomp: true) #file text would go here
        weather_words
    end

    def save_game
        # save
    end

    def load_game
        #load may or may not be needed
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

        p "Type start to play Hangman or type quit to leave."
        save_game = gets.chomp.downcase
        if save_game == "start"
            until @blank_spaces == @word do
                # p @word
                
                p "Type save to save the game, or exit to exit: "
                save_game = gets.chomp.downcase
                exit_game = gets.chomp.downcase
                if save_game == "save"
                    p "saving..."
                    p @letter_bank
                    puts "Guess a letter: "
                    letter = gets.chomp

                    if @attempts > 0 
                        guesses(letter)
                        p "#{@blank_spaces}"
                        
                    else @attempts == 0
                        puts "game over"
                        p @word
                        break
                    end
                else exit_game == "exit"
                    p "goodbye"
                    break
                end
                
            end
        else start_game == "quit"
            p "Goodbye"
        end
    end
end


game = Hangman.new
# puts game.word_bank
game.play