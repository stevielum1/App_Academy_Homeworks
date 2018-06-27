fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

# O(n^2)
def sluggish_octopus(fish)
  longest_fish = ""
  fish.each do |fish1|
    fish.each do |fish2|
      length1 = fish1.length
      length2 = fish2.length
      length1 > length2 ? longest_fish = fish1 : longest_fish = fish2
    end
  end
  longest_fish
end
