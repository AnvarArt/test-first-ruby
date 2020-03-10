class Book
  attr_reader :title

  def title=(sentence)
    line = sentence.split(' ')
    line.first[0] = line.first[0].upcase
      line.each do |word|
        if word == 'and' || word == 'the' ||
           word == 'over' || word == 'a' ||
           word == 'an' || word == 'but' ||
           word == 'or' || word == 'for' ||
           word == 'nor' || word == 'on' ||
           word == 'at' || word == 'to' ||
           word == 'from' || word == 'by' ||
           word == 'in' || word == 'of'
        else
          word[0] = word[0].upcase
        end
      end
    @title = line.join(' ')
  end
end
