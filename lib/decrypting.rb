require './lib/shiftable'

class Decrypting
  include Shiftable

  def alphabet
    ("a".."z").to_a << " "
  end
end 
