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

# O(n log n)
def dominant_octopus(fish)
  merge_sort(fish).last
end

def merge_sort(arr)
  return arr if arr.length <= 1
  mid = arr.length / 2
  lower = merge_sort(arr[0...mid])
  upper = merge_sort(arr[mid..-1])

  merge(lower, upper)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    if left.first.length < right.first.length
      result << left.shift
    else
      result << right.shift
    end
  end
  result + left + right
end

# O(n)
def clever_octopus(fish)
  longest = ""
  fish.each do |fish|
    longest = fish if longest.length < fish.length
  end
  longest
end
