class Temperature

  def initialize(opt = {})
    @temp = opt
  end

  def in_fahrenheit
    if @temp.has_key?(:f)
      return @temp[:f]
    elsif @temp.has_key?(:c)
      return @temp[:c]*9.to_f/5+32
    elsif @temp1.is_a? Numeric
      return @temp1*9.to_f/5+32
    else
      return @temp1
    end
  end

  def in_celsius
    if @temp.has_key?(:c)
      return @temp[:c]
    elsif @temp.has_key?(:f)
      return (@temp[:f]-32)*5.to_f/9
    elsif @temp2.is_a? Numeric
      return (@temp2-32)*5.to_f/9
    else
      return @temp1
    end
  end

  def self.from_celsius(temp)
    Temperature.new({c: temp})
  end

  def self.from_fahrenheit(temp)
    Temperature.new({f: temp})
  end
  
end
