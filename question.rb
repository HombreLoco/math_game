

class Question

  attr_reader :question, :answer

  def create_question
    first_random_num = random_number
    second_random_num = random_number
    @answer = first_random_num + second_random_num
    @question = "What does #{first_random_num} plus #{second_random_num} equal?"
  end

  def random_number
    1 + rand(20)
  end


end