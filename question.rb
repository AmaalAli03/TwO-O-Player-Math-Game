class Question
  attr_reader :num1, :num2
  
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = num1 + num2
  end
  #returns the question that was created and calculate sum of those two numbers
  def retrieve_question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = num1 + num2
  end
#returns the answer calculated with random( 2 variables which can use + , - , * , / )
  def check_answer?(input) 
    @sum == input
    
  end

end