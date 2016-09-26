class Encoder

  def duplicate_encode(word)
    word.downcase!
    answer = ''
    if ("!".."~").all?{|c| word.count(c) <= 1}
      answer << '('* word.length
    else
      word.each_char { |c|
        word.count(c) > 1 ? answer << ')' : answer << '('
      }
    end
    answer
  end
  
end
