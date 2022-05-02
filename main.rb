require "./player"
require "./question"

class Main

  def initialize
    @players = [Player.new(1), Player.new(2)]
  end

  def start
    turns = 0
    while turns < 3 do
      puts "#{"=" * 10} NEW TURN #{"=" * 10}"
      @current_player = @players[turns % 2]

      puts "Player #{@current_player.id}: What does #{1} #{"plus"} #{3} equal?"
      answer = gets.chomp
      answer = Integer(answer) rescue nil

      while answer == nil do
        puts "Not a valid answer! Answer must be an integer. Please try again."
        answer = gets.chomp
        answer = Integer(answer) rescue nil   
      end

      # puts "#{turns}, #{@current_player}, #{@current_player.id}"
      turns += 1
    end
  end

end

print `clear`
game = Main.new
game.start