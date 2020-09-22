require './lib/shiftable'

class Encrypting
  include Shiftable

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

  def rotate_letters(message, key, date)
    shift = create_shift(key, date)
    message_break = break_up(message)
    array_of_shifted = []
    message_break.each do |a,b,c,d|
      next unless a != nil
      if alphabet.include?(a)
      a_shift = alphabet.find_index(a)
        start_a_shift = alphabet.rotate(a_shift)
        array_of_shifted << start_a_shift.rotate(shift["A"]).first
      else
        array_of_shifted << a
      end
      next unless b != nil
      if alphabet.include?(b)
      b_shift = alphabet.find_index(b)
        start_b_shift = alphabet.rotate(b_shift)
        array_of_shifted << start_b_shift.rotate(shift["B"]).first
      else
        array_of_shifted << b
      end
      next unless c != nil
      if alphabet.include?(c)
      c_shift = alphabet.find_index(c)
        start_c_shift = alphabet.rotate(c_shift)
        array_of_shifted << start_c_shift.rotate(shift["C"]).first
      else
        array_of_shifted << c
      end
      next unless d != nil
      if alphabet.include?(d)
      d_shift = alphabet.find_index(d)
        start_d_shift = alphabet.rotate(d_shift)
        array_of_shifted << start_d_shift.rotate(shift["D"]).first
      else
        array_of_shifted << d
      end
    end
    array_of_shifted.join
  end
end
