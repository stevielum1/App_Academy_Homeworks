class Map

  def initialize(map = [])
    @map = map
  end

  def set(new_key, new_value)
    #if the key exists, update value
    @map.each_with_index do |key_value_pair, i|
      key = key_value_pair.first
      if key == new_key
        @map[i][1] = new_value
        return true
      end
    end
    #if the key does not exist, add key and value
    @map << [new_key, new_value]
    true
  end

  def get(target_key)
    @map.each do |key_value_pair|
      key = key_value_pair.first
      return key_value_pair.last if key == target_key
    end
  end

  #return true if target_key was deleted, false if not deleted
  def delete(target_key)
    new_map = @map.reject! do |key_value_pair|
      key = key_value_pair.first
      key == target_key
    end
    new_map == @map
  end

  def show
    @map
  end

end
