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
    @character_set = ("a".."z").to_a << " "
    @shift = shift
  end

  def calculate_shift(key, date)
    offset = OffsetGenerator.new(key, date)
    offset.generate_key_offset
    offset.generate_date_offset
    offset.generate_shift
    @key = offset.key
    @date = offset.date
    @shift = offset.generate_shift
  end





  def encrypt(message, key = KeyGenerator.new.randomizer, date = DateTime.now.strftime("%m%d%y"))
    calculate_shift(key, date)
    encrypted_hash = Hash.new(0)
    encryption = []
        message.chars.each.with_index do |letter,index|
          if index %4 == 0
            encryption << @character_set.rotate(@shift[0])[0]
          elsif index %4 == 1
            encryption << @character_set.rotate(@shift[1])[1]
          elsif index %4 == 2
            encryption << @character_set.rotate(@shift[2])[2]
          else
            encryption << @character_set.rotate(@shift[3])[3]
          end
          # require 'pry'; binding.pry



      encrypted_hash[:encryption] = encryption
      encrypted_hash[:key] = key
      encrypted_hash[:date] = date


    end
    encrypted_hash
  end
end
