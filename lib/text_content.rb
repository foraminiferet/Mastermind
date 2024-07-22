# all output messages
module TextContent
  def clues_message(exact, same)
    "\nThe are #{exact} matches at position, and #{same} partial matches"
  end

  def input_error_message
    "Wrong input, please try again."
  end

  def input_message
    "Please enter your code: "
  end

  def round_number_message(number)
    "\nRound number #{number}."
  end

  def display_computer_code_message
    "The computer generated code is: "
  end

  def computer_winner_message
    "\nSorry you lost, don't worry no one can beat the machine\n"
  end

  def player_winner_message
    "\nCongradulations you won, the machine ain't got nothing on you.\n"
  end

  def player_generated_solution_message
    "Please enter the code you want the computer to guess"
  end

  def make_player_message
    "Set a code you would like the computer to guess: "
  end

  def codemaker_message
    "You are the codemaker"
  end

  def codebreaker_message
    "You are the code breaker."
  end

  def play_again_message
    "Do you wish to play again. Press 'y' for yes (or any other key to exit the game.)"
  end

  def thanks_for_playing_message
    "Thanks for playing the game. Hope you had fun!"
  end

  def instructions
    <<~HEREDOC
      Mastermind is a puzzle game where one player is the codebreaker and the other one the
      codemaker. In this example you are playing against the computer. The goal of this game
      is to solve the the code that is set by one of the players.
      The player has 12 rounds to break the code if he does not compleate this, the he loses.
      You start with the initial guess. And after each round you get the feed back of how many
      numbers(colors) are in the matching positons, and how many are in the partial matches
      (the correct number(color) but not in the correct position).Based on that feed back you
      need to guess the correct code.

      You can eather play as the codemaker or the code breaker. Good luck.

      Press 1 to be the code maker, and 2 to be the code breaker:

    HEREDOC
  end
end
