class Question

  attr_reader :question, :answer

  def initialize
    operator = ['+', '-'].sample
    expression = "#{rand(1..20)} #{operator} #{rand(1..20)}"
    @question = "What is #{expression}?"
    @answer = eval(expression)
  end
end

# test_q = Question.new
# puts test_q.question
# puts test_q.answer