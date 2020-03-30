class RPNCalculator
  attr_accessor :array

  def initialize
    @array = []
  end

  def push(value)
    array.push(value)
  end

  def plus
    if array.empty?
      raise "calculator is empty"
    else
      array[-1] = array[-1] + array[-2]
      array[-2] = array[-1]
      array.pop
    end
  end

  def value
    array[-1]
  end

  def minus
    if array.empty?
      raise "calculator is empty"
    else
      array[-1] = array[-2] - array[-1]
      array[-2] = array[-1]
      array.pop
    end
  end

  def divide
    if array.empty?
      raise "calculator is empty"
    else
      array[-1] = array[-1].to_f
      array[-2] = array[-2].to_f

      array[-1] = array[-2] / array[-1]
      array[-2] = array[-1]
      array.pop
    end
  end

  def times
    if array.empty?
      raise "calculator is empty"
    else
      array[-1] = array[-1].to_f
      array[-2] = array[-2].to_f

      array[-1] = array[-2] * array[-1]
      array[-2] = array[-1]
      array.pop
    end
  end

end
