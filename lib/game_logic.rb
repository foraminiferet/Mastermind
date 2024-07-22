# logic for how the game should function
module GameLogic
  def compare(guess, solution)
    guess_clone = guess.clone
    solution_clone = solution.clone
    @exact = exact_matches(guess_clone, solution_clone)
    @same = same_matches(guess_clone, solution_clone)
  end

  def exact_matches(guess, solution)
    exact = 0
    guess.each_with_index do |el, index|
      next unless el == solution[index]

      solution[index] = 0
      guess[index] = 0
      exact += 1
    end
    exact
  end

  def same_matches(guess, solution)
    same = 0
    guess.each_index do |index|
      next unless solution.include?(guess[index]) && guess[index] != 0

      same += 1
      remove_index = solution.find_index(guess[index])
      solution[remove_index] = 0
      guess[index] = 0
    end
    same
  end

  def solved?(guess, solution)
    guess == solution
  end

  def play_again
    puts play_again_message
    replay = gets.chomp
    puts thanks_for_playing_message if replay != "y"
    Game.new.play if replay == "y"
  end

  # player input and correct input
  def player_input
    puts input_message
    temp_input = gets.chomp
    if input_control?(temp_input) == false
      puts input_error_message
      return player_input
    end
    temp_input.chars.map(&:to_i)
  end

  def input_control?(player_input)
    player_input.length == 4 && player_input.chars.all? { |num| num.to_i.between?(1, 6) }
  end
end
