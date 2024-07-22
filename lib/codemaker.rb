require_relative "display"
require_relative "game_logic"
require_relative "text_content"

# codemaker game
class Codemaker
  include Display
  include TextContent
  include GameLogic

  def initialize
    @computer_guess = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
    @maker = make_player_code
    @rounds = 1
  end

  def play
    puts codemaker_message
    play_rounds
    game_over
    play_again
  end

  private

  attr_accessor :maker, :all_permutations, :rounds, :computer_guess

  def play_rounds # rubocop:disable Metrics/AbcSize
    while rounds < 13
      puts round_number_message(rounds)
      sleep(0.75)
      compare(computer_guess, maker)
      show_code(computer_guess)
      puts clues_message(@exact, @same)
      break if solved?(computer_guess, maker)

      self.computer_guess = generate_new_guess(computer_guess)
      self.rounds += 1
    end
  end

  def generate_new_guess(computer_guess) # rubocop:disable Metrics/MethodLength
    new_guess = []
    i = 0
    while i < 4
      new_guess << if computer_guess[i] == maker[i]
                     computer_guess[i]
                   else
                     rand(1..6)
                   end
      i += 1
    end
    new_guess
  end

  def make_player_code
    puts make_player_message
    self.maker = player_input
    show_code(maker)
  end

  def game_over
    if solved?(computer_guess, maker)
      puts computer_winner_message
    else
      puts player_winner_message
    end
  end
end
