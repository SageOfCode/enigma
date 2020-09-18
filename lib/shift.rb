class Shift
  attr_reader :date, :offset
  def initialize(date, offset)
    @date = date
    @offset = offset
  end
end
