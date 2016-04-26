# Chess by Destroyergm
This chess game implemented in ruby. It's my solution to the assignment at [The Odin Project](http://www.theodinproject.com/ruby-programming/ruby-final-project)
# Requirements
 - Ruby
 - Linux ( tested with GNOME terminal )
 - Optional: Set your terminal font bigger in order to see the pieces better
# About
The game in the current state is WIP

## Working features:
 - Rendering of the game board
 - Chess input to matrix parser
 - Move validation for pawns, rooks

## Not implemented:
 - Move validation for Queens, Horses, Bishops, Kings
 - Check-mate condtions, stalemate
 - King dosn't get a priority if he is beeing targeted
 - You can't turn pawns intro Queens when reaching the oposite side
 - Swap Rook and King when special conditions are met

## Info
This is how the board looks. In order to play the game you just need to run `ruby start.rb`
The project also includes some RSpec tests, in order to see them you type `rake`
```
 a   b   c   d   e   f   g   h
		┏━━━┳━━━┳━━━┳━━━┳━━━┳━━━┳━━━┳━━━┓
	8	┃ ♜ ┃ ♞ ┃ ♝ ┃ ♛ ┃ ♚ ┃ ♝ ┃ ♞ ┃ ♜ ┃
		┣━━━╋━━━╋━━━╋━━━╋━━━╋━━━╋━━━╋━━━┫
	7	┃ ♟ ┃ ♟ ┃ ♟ ┃ ♟ ┃ ♟ ┃ ♟ ┃ ♟ ┃ ♟ ┃
		┣━━━╋━━━╋━━━╋━━━╋━━━╋━━━╋━━━╋━━━┫
	6	┃   ┃   ┃   ┃   ┃   ┃   ┃   ┃   ┃
		┣━━━╋━━━╋━━━╋━━━╋━━━╋━━━╋━━━╋━━━┫
	5	┃   ┃   ┃   ┃   ┃   ┃   ┃   ┃   ┃
		┣━━━╋━━━╋━━━╋━━━╋━━━╋━━━╋━━━╋━━━┫
	4	┃   ┃   ┃   ┃   ┃   ┃   ┃   ┃   ┃
		┣━━━╋━━━╋━━━╋━━━╋━━━╋━━━╋━━━╋━━━┫
	3	┃   ┃   ┃   ┃   ┃   ┃   ┃   ┃   ┃
		┣━━━╋━━━╋━━━╋━━━╋━━━╋━━━╋━━━╋━━━┫
	2	┃ ♙ ┃ ♙ ┃ ♙ ┃ ♙ ┃ ♙ ┃ ♙ ┃ ♙ ┃ ♙ ┃
		┣━━━╋━━━╋━━━╋━━━╋━━━╋━━━╋━━━╋━━━┫
	1	┃ ♖ ┃ ♘ ┃ ♗ ┃ ♕ ┃ ♔ ┃ ♗ ┃ ♘ ┃ ♖ ┃
		┗━━━┻━━━┻━━━┻━━━┻━━━┻━━━┻━━━┻━━━┛
		  a   b   c   d   e   f   g   h

```
# Features
- [ ]  Fully functional chess game
- [ ]  Simple AI
- [ ]  Online versus for 2 players
