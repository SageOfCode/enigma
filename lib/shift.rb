class Shift
  attr_reader :date, :offset
  def initialize(date, offset)
    @date = date
    @offset = offset
  end

#---------------Shift

#---------------Key
def find_keys(key)
  key.chars.map do |char|
    char.to_i
  end
end




#---------------Offset
end
