require 'csv'



class HangmanGame

    def initialize
        @display_blank = "_" * secret_words.length
        @guess_word = []
    end

    def secret_words
        selector = File.readlines("random_text.txt")
        secret_word = selector[rand(61404)]
        secret_word.strip
    end

    def word_selection
        if secret_words.length >=5 && secret_words.length <= 12
            secret_words
        else
            "rhythm"
        end
    end

    def word_to_array
        new_word_array = word_selection.split(//)
        @guess_word << new_word_array
        @guess_word
    end

    def display_word
        new_display_blank = @display_blank.split
        new_display_blank
    end

    def player_input_number
        player_index_choice = gets.chomp.to_i
        player_index_choice
    end

    def player_input_num_for_word
        display_word[player_input_number]
    end

    def player_input_letter
        player_letter_choice = gets.chomp
        player_letter_choice
    end

    def total_display
        

    
end

game = HangmanGame.new
p game.word_to_array
puts game.display_word
puts game.player_input_letter





