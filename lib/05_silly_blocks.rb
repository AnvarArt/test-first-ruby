def reverser
  rev = yield
  rev.split(" ").map do |word|
    word = word.reverse
  end.join(" ")
end

def adder(value = 1)
  yield + value
end

def repeater(value = 1)
  value.times do
   yield
  end
end
