class Array
  def sum
    if self.empty?
      return 0
    else
      total = 0
      self.each {|number| total += number }
      return total
    end
  end

  def square
    if self.empty?
      return self
    else
      self.map {|number| number*number}
    end
  end

  def square!
    self.each_with_index {|number, index| self[index] = number*number}
  end
end
