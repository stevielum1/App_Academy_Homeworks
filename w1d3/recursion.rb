def sum_to(num)
  return nil if num <= 0
  if num == 1
    num
  else
    num + sum_to(num-1)
  end
end

def add_numbers(nums_array)
  if nums_array.length <= 1
    nums_array.pop
  else
    nums_array.pop + add_numbers(nums_array)
  end
end

def gamma_fnc(n)
  return nil if n <= 0
  if n == 1
    n
  else
    (n-1) * gamma_fnc(n-1)
  end
end

def ice_cream_shop(flavors, favorite)
  flavor = flavors.pop
  return true if flavor == favorite
  if flavors.length == 0
    false
  else
    ice_cream_shop(flavors, favorite)
  end
end

def reverse(string)
  if string.length <= 1
    string
  else
    string[-1] + reverse(string[0...-1])
  end
end


if __FILE__ == $PROGRAM_NAME
  puts "sum_to"
  p sum_to(5)  # => returns 15
  p sum_to(1)  # => returns 1
  p sum_to(9)  # => returns 45
  p sum_to(-8)  # => returns nil
  puts "add_numbers"
  p add_numbers([1,2,3,4]) # => returns 10
  p add_numbers([3]) # => returns 3
  p add_numbers([-80,34,7]) # => returns -39
  p add_numbers([]) # => returns nil
  puts "gamma_fnc"
  p gamma_fnc(0)  # => returns nil
  p gamma_fnc(1)  # => returns 1
  p gamma_fnc(4)  # => returns 6
  p gamma_fnc(8)  # => returns 5040
  puts "ice_cream_shop"
  p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
  p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
  p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
  p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
  p ice_cream_shop([], 'honey lavender')  # => returns false
  puts "reverse"
  p reverse("house") # => "esuoh"
  p reverse("dog") # => "god"
  p reverse("atom") # => "mota"
  p reverse("q") # => "q"
  p reverse("id") # => "di"
  p reverse("") # => ""
end
