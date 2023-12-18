require './questions.rb'
class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end


    def lost_lives
      @lives <= 0
    end
end


