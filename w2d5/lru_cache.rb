class LRUCache
  def initialize(limit)
    @limit = limit
    @cache = []
  end

  def count
    # returns number of elements currently in cache
    cache.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    if in_cache?(el)
      el_idx = cache.index(el)
      @cache = cache[0...el_idx] + cache[el_idx+1..-1] + [el]
    else
      cache.shift if limit_reached?
      cache.push(el)
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    cache
  end

  private
  # helper methods go here!
  attr_reader :cache, :limit

  def in_cache?(el)
    cache.any? { |cache_el| cache_el == el }
  end

  def limit_reached?
    count >= limit
  end

end
