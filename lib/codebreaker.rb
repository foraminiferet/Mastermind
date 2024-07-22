require_relative "game_logic"
require_relative "display"
require_relative "text_content"

# codebreaker game
class Codebreaker
  include Display
  include GameLogic
  include TextContent

  attr_reader :computer_solution, :player_guess, :round

  def initialize
    @computer_solution = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
    @player_guess = []
    @round = 1
  end

  def play
    puts codebreaker_message
    play_rounds
    game_over
    play_again
  end

  private

  attr_writer :player_guess, :round

  def play_rounds
    while round < 12
      puts round_number_message(round)
      self.player_guess = player_input
      show_code(player_guess)
      break if solved?(player_guess, computer_solution)

      round_outcome
      self.round += 1
    end
  end

  def round_outcome
    compare(player_guess, computer_solution)
    puts clues_message(@exact, @same)
  end

  def game_over
    if solved?(player_guess, computer_solution)
      puts player_winner_message
    else
      puts computer_winner_message
    end
    puts display_computer_code_message
    show_code(computer_solution)
  end
end
