require 'colorize'

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    take_turn until game_over
    game_over_message
    reset_game
    play_again
  end

  def take_turn
    show_sequence
    require_sequence
    unless game_over
      round_success_message
      self.sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    print "Sequence is: "
    print_sequence
    sleep(3)
    system("clear")
  end

  def require_sequence
    puts "Sequence length is: #{seq.length}"
    print "Enter sequence (ex. rbgy): "
    input = gets.chomp.downcase.split("")
    input.map! do |el|
      case el
      when "r"
        "red"
      when "b"
        "blue"
      when "g"
        "green"
      when "y"
        "yellow"
      end
    end
    self.game_over = input != seq
  end

  def add_random_color
    self.seq << COLORS.sample
  end

  def round_success_message
    puts "Round success!"
  end

  def game_over_message
    puts "Game over!"
    print "The sequence was "
    print_sequence
    puts "Sequence length was #{seq.length}"
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end

  def play_again
    print "Play again? (y/n): "
    input = gets.chomp.downcase
    play if input == "y"
    puts "Goodbye!"
  end

  def print_sequence
    seq.each do |el|
      case el
      when "red"
        print "r".red
      when "green"
        print "g".green
      when "blue"
        print "b".blue
      when "yellow"
        print "y".yellow
      end
    end
    puts
  end

end

if __FILE__ == $PROGRAM_NAME
  s = Simon.new
  s.play
end
