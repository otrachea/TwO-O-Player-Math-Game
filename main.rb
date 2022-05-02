require "./player"
require "./question"

class Main

  def initialize
    @players = [Player.new(1), Player.new(2)]
  end

  def start

    turns = 1

    while true do
      puts "#{"=" * 10} TURN #{turns} #{"=" * 10}"
      current_player = @players[(turns + 1) % 2]

      question = Question.new

      puts "Player #{current_player.id}: #{question.description}"
      answer = Integer(gets.chomp) rescue nil

      while answer == nil do
        puts "Not a valid answer! Answer must be an integer. Please try again."
        answer = Integer(gets.chomp) rescue nil
      end

      if answer == question.answer 
        puts "Player #{current_player.id}: Correct answer!" 
      else
        puts "Player #{current_player.id}: Wrong answer!"
        current_player.lose_life
      end
      
      if @players[0].is_dead 
        puts "Player 2 wins with a score of #{@players[1].life}/3"
        break
      end

      if @players[1].is_dead
        puts "Player 1 wins with a score of #{@players[0].life}/3"
        break
      end
        
      puts "P1: #{@players[0].life}/3 vs P2: #{@players[1].life}/3"

      turns += 1
    end

    puts "#{"=" * 10} GAME OVER #{"=" * 10}"
    puts "Good bye!"
  end

end

print `clear`
game = Main.new
game.start