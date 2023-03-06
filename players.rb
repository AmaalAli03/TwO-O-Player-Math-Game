class Player 
  attr_accessor :name , :lives
  ##we need to figure out whos playing
  def initialize (name, lives)
    @name = name
    @lives = lives
  end




#returns if player wins increase score by 1 (+1)
  def decrease_score
 @lives -= 1
  end

#returns the current players turn with player and id "Give it youre best shot!"
  def next_turn

  end

#returns the other players turn with player and id "Not youre turn yet, get ready"
  def end_turn

  end
end


