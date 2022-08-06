class Enigma
  def initialize
    @character_set = ("a".."z").to_a

  end


  def encrypt(message, key, date)
    cipher_hash = Hash.new(0)
    cipher_hash[:encryption] = message
    cipher_hash[:key] = key
    cipher_hash[:date] = date
  end
end
