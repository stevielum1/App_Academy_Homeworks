tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

# O(n)
def slow_dance(move, tiles_array)
  tiles_array.each_with_index { |tile, i| return i if tile == move }
end
