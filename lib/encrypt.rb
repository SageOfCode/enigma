class Encrypt

  def alphabet
    ("a".."z").to_a << " "
  end

  def break_up(message)
    split_words = []
    message.chars.each_slice(4).with_index do |array_of_four|
      split_words << array_of_four
    end
    split_words
  end

  def rotate_letters(message, shift)
    array_of_shifted = []
    message.map do |snippet|
      a_shift = alphabet.find_index(snippet[0])
        start_a_shift = alphabet.rotate(a_shift)
        array_of_shifted << start_a_shift.rotate(shift["A"]).first
      b_shift = alphabet.find_index(snippet[1])
        start_b_shift = alphabet.rotate(b_shift)
        array_of_shifted << start_b_shift.rotate(shift["B"]).first
      c_shift = alphabet.find_index(snippet[2])
        start_c_shift = alphabet.rotate(c_shift)
        array_of_shifted << start_c_shift.rotate(shift["C"]).first
      d_shift = alphabet.find_index(snippet[3])
        start_d_shift = alphabet.rotate(d_shift)
        array_of_shifted << start_d_shift.rotate(shift["D"]).first
    end
    array_of_shifted.join
  end
end
