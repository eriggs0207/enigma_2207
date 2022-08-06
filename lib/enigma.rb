class Enigma
  attr_reader :message,
              :key,
              :date,
              :character_set
  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
    @character_set = ("a".."z").to_a
  end


  def encrypt(message, key, date)
    if key == nil
      @key == @key_generator.randomizer
    else
      return
    end
    if date == nil
      @date == @current_date
    else
      return
    end


  end
end
