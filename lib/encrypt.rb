class Encrypt

  def alphabet
    ("a".."z").to_a << " "
  end

  def break_up(message)
    split_words = []
    message.chars.each_slice(4) do |array_of_four|
      split_words << array_of_four
    end
    split_words
  end

end
