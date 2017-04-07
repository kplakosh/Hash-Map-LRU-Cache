class Fixnum
  # Fixnum#hash already implemented for you
end

class Array
  def hash
    hash_val = 87654
    self.each.with_index do |el, ind|
      hash_val ^= el.hash + ind
    end
    hash_val
  end
end

class String
  def hash
    chars.map(&:ord).hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    to_a.sort_by(&:hash).hash
  end
end
