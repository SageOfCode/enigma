class Enigma
  attr_reader :date, :offset, :message
  def initialize(date, offset, message)
    @date = date
    @offset = offset
    @message = message
  end
end
