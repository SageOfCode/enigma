class Shift

  def generate_number
    rand(99999).to_s
  end

  def create_keys
    split_into_keys = generate_number.rjust(5, "0")
    key_splits = [split_into_keys[0..1], split_into_keys[1..2], split_into_keys[2..3], split_into_keys[3..4]]
  end

  def date_of_today
    Date.today.strftime("%d%m%y").to_i
  end

  def date_code
    date_of_today ** 2
  end



  def method_name

  end
end
