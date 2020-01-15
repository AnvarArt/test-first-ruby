def translate(sentence)
  sentence.split(" ").map do |word|
    word = word.gsub("qu", " ").to_s
    word.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay')
    word = word.gsub(" ", "qu").to_s
  end.join(" ")
end
