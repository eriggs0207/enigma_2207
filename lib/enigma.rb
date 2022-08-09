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
    # @cipher_text = cipher_text
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




            c = @character_set.find_index(letter) + @shift[index % 4]

            encryption << @character_set[c % 27]

      encrypted_hash[:encryption] = encryption.join
      encrypted_hash[:key] = key
      encrypted_hash[:date] = date


    end
    encrypted_hash
  end

end
