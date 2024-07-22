require_relative "text_content"
require_relative "codebreaker"
require_relative "codemaker"

# the game class for playing
class Game
  include TextContent

  def play
    puts instructions
    game_mode = mode_selection
    code_maker if game_mode == "1"
    code_breaker if game_mode == "2"
  end

  def mode_selection
    input = gets.chomp
    return input if input.match(/^[1-2]$/)

    puts input_error_message
    mode_selection
  end

  def code_breaker
    Codebreaker.new.play
  end

  def code_maker
    Codemaker.new.play
  end
end
