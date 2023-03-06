class Game 

  attr_reader :name, :player_1, :player_2
  ##we need to figure out whos playing
  def initialize (update_round)
    @player_1 = Player.new("Player 1:", 3)
    @player_2 = Player.new("Player 2:", 3)
    @currentplayer = @player_1
  end
#returns a start prompt
  def playing 
    
    puts "Lets Start Playing Now. Please welcome #{player_1.name} and #{player_2.name}"
   
  end

  def check_winner
    if @player_1.lives == 0
      winner(player_2)
    elsif @player_2.lives == 0
      winner(player_1)
    end  
  end

#returns the question that was created as a string for next player

def create_question
  new_question = Question.new
  puts "#{@currentplayer.name}: What does #{new_question.num1} plus #{new_question.num2} equal?"
  print "> "
  @userschoice = $stdin.gets.chomp
  if new_question.check_answer?(@userschoice.to_i)
    puts "YES! You are correct."
  else
    puts "Seriously? No!"
    @currentplayer.decrease_score
    
  end  
end

def update_scoreboard
  puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
end

  def winner(player)
    puts "#{player.player_name} wins with an amazing score of #{player.lives}/3"
    puts "-----GAME-OVER-----"
    puts "Good bye!"
    exit(0) 
  end
  
  def update_round
  if @player_1.lives > 0 && @player_2.lives > 0
      update_scoreboard
      puts "-----NEW-TURN-----"
      turn  
    
    else
      puts "-----GAME-OVER-----"
      puts "Good bye!"
   end 
  end

  def turn 
  if @currentplayer == @player_1
    @currentplayer = @player_2
    
  elsif 
    @currentplayer = @player_1

  end
  play
end

  def play
    create_question
    update_scoreboard
    update_round
  end

end
##you can refrenece the method in the same class but if you want to refrence it outside you need an instance of the class to call the method an example is the player class
##we need to use the player instances @player1 or 2 we could do @curr with any of the methods in the player class