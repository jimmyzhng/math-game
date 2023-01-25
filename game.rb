require './question.rb'
require './player.rb'


class Game
  attr_accessor :input, :players, :current_player

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @current_player = @player1
  end

  def determine_win
    if @player2.lives == 0
      puts "Player 1 wins with a score of #{@player1.lives}"
    else
      puts "Player 2 wins with a score of #{@player2.lives}"
    end
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  def switch_turns
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def start

    while @player1.lives > 0 && @player2.lives > 0 do
      q = Question.new

      puts "----- NEW TURN -----"
      puts "Player #{@current_player.id}: #{q.question}"
      print "> "
      ans = gets.chomp.to_i

      if ans == q.answer
        puts "Player #{@current_player.id}: YES! You are correct."
      else
        puts "Player #{@current_player.id}: Seriously? No!"
        @current_player.lives -= 1
      end 
    puts "P1: #{@player1.lives} vs P2: #{@player2.lives}"
    switch_turns
    end

      self.determine_win
    
  end

end



    

 
