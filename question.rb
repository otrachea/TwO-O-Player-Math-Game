class Question 

  attr_reader :id, :description, :answer

  def initialize(id, description, answer)
    @id = id
    @description = description
    @answer = answer
  end

end