require './game'

class Question 
  attr_accessor :answer, :basic_question

  def initialize 
    @answer = nil # answer is initially nothing
  end

  def basic_question
    num = Random.new # Built into ruby - Random.new()

    first_num = num.rand(100)
    second_num = num.rand(100)

    @answer = first_num + second_num
    puts "What is #{first_num} + #{second_num}"
  end

end
