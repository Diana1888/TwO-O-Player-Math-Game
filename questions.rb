class Questions
  attr_accessor :num_one, :num_two, :answer

  def initialize
    generate_question
  end

  def generate_question
  @num_one = rand(1..20)
  @num_two = rand(1..20)
  @answer = @num_one + @num_two
  puts "What does #{num_one} plus #{num_two} equal?"
  end


end

