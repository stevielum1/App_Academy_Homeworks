tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

tiles_hash = {}

tiles_array.each_with_index do |tile, i|
  tiles_hash[tile] = i
end

# O(n)
def slow_dance(move, tiles_array)
  tiles_array.each_with_index { |tile, i| return i if tile == move }
end

# O(1)
def fast_dance(move, tiles_hash)
  tiles_hash[move]
end
