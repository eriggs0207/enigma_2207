class Enigma
  def initialize
    @character_set = ("a".."z").to_a
    @key = key
    @date = date
  end


  def encrypt(message, key, date)
    if key = nil
      @key = @key_generator.randomizer
    else
      return
    end
    if date = nil
      @date = @current_date
    else
      return 
    end

  end
end
