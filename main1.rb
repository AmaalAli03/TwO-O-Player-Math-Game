# players start with 3 lives
# lose a life if they mis-answer a question
# output the new scores for both players after each question 
# players loses all their lives = game over
# game should announce who won and what the score is
# all classes are goin to be in the game
# player only has name or life
# main,player,game,question
# game has player 1,2 (current player aswell), question and everything else to run the game\

require "./game"
require "./players"
require "./question"



# game = Game.new
game = Game.new("Amaal")
game.playing 
game.play
# puts game.player_1.player_name
# puts game.player_2.player_name