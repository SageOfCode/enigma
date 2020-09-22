require 'date'

module Shiftable

  def generate_number
    rand(99999).to_s.rjust(5, "0")
  end

  def create_keys(key)
    split_into_keys = key.rjust(5, "0")
    key_splits = [split_into_keys[0..1], split_into_keys[1..2], split_into_keys[2..3], split_into_keys[3..4]]
    number_values = key_splits.map do |num_key|
      num_key.to_i
    end
    letter_keys = ("A".."D").to_a
    Hash[(letter_keys).zip(number_values)]
  end

  def date_of_today
    Date.today.strftime("%d%m%y")
  end

  def create_offset(date)
    date_squared = date.to_i ** 2
    date_coded = date_squared.to_s[-4..-1].split("")
    number_values = date_coded.map do |number|
      number.to_i
    end
    letter_keys = ("A".."D").to_a
    Hash[(letter_keys).zip(number_values)]
  end

  def create_shift(key, date)
    if key != nil
      keys_with_code = create_keys(key)
    else
      keys_with_code = create_keys(generate_number)
    end
    if date != nil
      offset_with_code = create_offset(date)
    else
      offset_with_code = create_offset(date_of_today)
    end
    keys_with_code.merge(offset_with_code) do |letter, keys, offset|
      keys + offset
    end
  end
end
