# Mastermind

A classic code-breaking game where the player (codebreaker) tries to guess the pattern
of colors or numbers chosen by the computer (codemaker). The game provides feedback to help
the player deduce the correct pattern whitin a limited number of attempts

## Features
* Interactive command-line interface (CLI) gameplay
* Feedback mechanism to indicate exact matches and correct matches
* Option for the computer to act as codemaker or codebreaker
* Randomly generated or user-defined code depending on game mode

## Game Rules

1. Objective:
	* the codebreaker tries to guess the secret code in the fewest attempts possible
2. Setup:
	* the codemaker sets a secret code, which the codebreaker tries to guess
	* the code consist of number,  colors or symbols
3. Gameplay:
	* the codebreaker makes a guess based on the feedback
	* Feedback:
		* Exact matches (correct symbol in the correct position)
		* Partial matches (corect symbol in the wrong position)
4. Winning:
	* the codebreaker wins by guessing the correct secret code
	* the codemaker wins if the codebreaker doesn't guess the secret code in a set number of attempts

## Implementation:
	
	* colors for set nummbers between (1-6)
	* player feedback for guessing the secret code
	* the ability to play as a codemaker or codeguesser
