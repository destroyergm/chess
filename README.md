# Chess by Destroyergm
This chess game implemented in ruby. It's my solution to the assignment at [The Odin Project](http://www.theodinproject.com/ruby-programming/ruby-final-project)
# Requirements
 - Ruby
 - Linux ( tested with GNOME terminal )
# About
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
