require './player.rb'
require './questions.rb'

class Game
  attr_accessor :current_player, :player1, :player2

  def initialize 
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end


  def start_game
    while !game_over
      puts "----- NEW TURN -----"
      questions = Questions.new
      player_answer = gets.chomp.to_i

      if player_answer == questions.answer
        puts "#{current_player.name}: YES! You are correct"
        puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      else
        puts "#{current_player.name}: Seriously? No!"
        current_player.lives -= 1
        puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      end
      switch_player
    end
    
    winner
  end

  def game_over
  player1.lost_lives || player2.lost_lives
   end

  def winner
  if player1.lost_lives
    puts "#{player2.name} wins with a score of #{player2.lives}/3"
  else
    puts "#{player1.name} wins with a score of #{player1.lives}/3"
  end
  
  puts "----- GAME OVER -----"
  puts "Good bye!"
  true
end

  def switch_player
    @current_player = (current_player == player1) ? player2 : player1
  end

end



