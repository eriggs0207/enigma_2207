class Enigma
  attr_reader :message,
              :key,
              :date,
              :character_set,
              :shift
  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
    @character_set = ("a".."z").to_a
  end

  def encrypt(message, key, date)
    encryption = []
        message.chars.each.with_index{|letter,index| puts [letter,index].inspect}
        if @character_set.include?(letter.downcase)
          # encryption += @character_set(@character_set.index(letter) + shift[:a])
        
      end
      encrypted_hash = Hash.new(0)
      encrypted_hash[:encryption] = encryption
      encrypted_hash[:key] = @key
      encrypted_hash[:date] = @date
    end
    encrypted_hash
  end
end
