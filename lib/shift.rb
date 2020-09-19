class Shift

  def generate_number
    rand(99999).to_s
  end

  def create_keys
    split_into_keys = generate_number.rjust(5, "0")
    key_splits = [split_into_keys[0..1], split_into_keys[1..2], split_into_keys[2..3], split_into_keys[3..4]]
  end

  def assign_keys_to_keys
    number_values = create_keys.map do |key|
      key.to_i
    end
    letter_keys = ("A".."D").to_a
    Hash[(letter_keys).zip(number_values)]
  end

  def date_of_today
    Date.today.strftime("%d%m%y")
  end

  def date_code
    date_squared = date_of_today ** 2
    date_squared.to_s[-4..-1].split("")
  end

  def create_offset
    number_values = date_code.map do |number|
      number.to_i
    end
    letter_keys = ("A".."D").to_a
    Hash[(letter_keys).zip(number_values)]
  end
end
