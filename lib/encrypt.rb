require './lib/shiftable'

class Encrypt
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

  def rotate_letters(message, shift)
    array_of_shifted = []
    message.each do |a,b,c,d|
      next unless a != nlil
      a_shift = alphabet.find_index(a)
        start_a_shift = alphabet.rotate(a_shift)
        array_of_shifted << start_a_shift.rotate(shift["A"]).first

      next unless b != nil
      b_shift = alphabet.find_index(b)
        start_b_shift = alphabet.rotate(b_shift)
        array_of_shifted << start_b_shift.rotate(shift["B"]).first

      next unless c != nil
      c_shift = alphabet.find_index(c)
        start_c_shift = alphabet.rotate(c_shift)
        array_of_shifted << start_c_shift.rotate(shift["C"]).first

      next unless d != nil
      d_shift = alphabet.find_index(d)
        start_d_shift = alphabet.rotate(d_shift)
        array_of_shifted << start_d_shift.rotate(shift["D"]).first
    end
    array_of_shifted.join
  end
end
