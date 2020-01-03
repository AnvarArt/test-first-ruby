def translate(sentence)
  sentence.split(" ").map do |word|
    word = word.gsub("qu", " ").to_s
    word.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay')
    word = word.gsub(" ", "qu").to_s
  end.join(" ")
end
=begin
if vow == arr[0,1]
  arr.concat("ay")
  arr
elsif (vow != arr[1,1] && vow != arr[0,1])
      one = arr[0,1]
      #puts "one: #{one}"
      two = arr[1,1]
      #puts "two: #{two}"
      arr[0,1] = ""
      arr[1,1] = ""
    arr += one
    arr += two
    arr.concat("ay")
    arr
elsif vow != arr[0,1]
  first = arr[0,1]
  arr[0,1] = ""
  arr += first
  arr.concat("ay")
  arr
  end
end
=end
=begin
  if vow != arr[0,1] && vow != arr[1,1]
    one = arr[0,1]
    #puts "one: #{one}"
    two = arr[1,1]
    #puts "two: #{two}"
    arr[0,1] = ""
    arr[1,1] = ""
    arr += one
    arr += two
    arr.concat("ay")
    arr
  end
=end
