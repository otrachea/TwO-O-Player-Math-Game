class Question 

  attr_reader :description, :answer

  def initialize
    question = create_question  
    @description = question[0]
    @answer = question[1]
  end

  private

  def create_question 
    num1 = Random.rand(1..20)
    num2 = Random.rand(1..20)
    operator = ["+", "-"][Random.rand(2)]

    answer = operator == "+" ? num1 + num2 : num1 - num2

    ["What is #{num1} #{operator} #{num2}?", answer]
  end

end