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

  def hash
    to_a.sort_by(&:hash).hash
  end
end
