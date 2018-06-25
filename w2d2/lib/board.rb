class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { [] }
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    cups.each_with_index do |cup, idx|
      4.times { cup << :stone } unless idx == 6 || idx == 13
    end
  end

  def valid_move?(start_pos)
    unless start_pos.between?(0, cups.length)
      raise 'Invalid starting cup'
    end
    raise 'Starting cup is empty' if cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = cups[start_pos].dup
    cups[start_pos] = []

    current_pos = (start_pos + 1) % cups.length

    until stones.empty?
      if current_player_name == name1
        cups[current_pos] << stones.pop unless current_pos == 13
      else
        cups[current_pos] << stones.pop unless current_pos == 6
      end
      current_pos = (current_pos + 1) % cups.length
    end

    render

    next_turn(current_pos)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end

  private

  attr_reader :name1, :name2
end
