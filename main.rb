# the main function from which the code executes
require_relative "lib/codebreaker"
require_relative "lib/codemaker"
require_relative "lib/display"
require_relative "lib/game"
require_relative "lib/game_logic"
require_relative "lib/text_content"

Game.new.play
