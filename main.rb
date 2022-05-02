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

      question = Question.new

      puts "Player #{@current_player.id}: #{question.description}"
      answer = Integer(gets.chomp) rescue nil

      while answer == nil do
        puts "Not a valid answer! Answer must be an integer. Please try again."
        answer = Integer(gets.chomp) rescue nil
      end

      puts answer == question.answer ?
        "Player #{@current_player.id}: Correct answer!" :
        "Player #{@current_player.id}: Wrong answer!"

      turns += 1
    end
  end

end

print `clear`
game = Main.new
game.start