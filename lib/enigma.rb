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

  def encrypt(message, key, date)
    calculate_shift(key, date)
    encrypted_hash = Hash.new(0)
    encryption = []
        message.chomp.chars.each.with_index do |letter,index|
          new_shift = @character_set.find_index(letter) + @shift[index % 4]
          encryption << @character_set[new_shift % 27]
      encrypted_hash[:encryption] = encryption.join
      encrypted_hash[:key] = key
      encrypted_hash[:date] = date
    end
    encrypted_hash
  end

  def decrypt(message, key, date)
    calculate_shift(key, date)
    decrypted_hash = Hash.new(0)
    decryption = []
        message.chomp.chars.each.with_index do |letter,index|
        new_shift = @character_set.find_index(letter) - @shift[index % 4]
        decryption << @character_set[new_shift % 27]
      decrypted_hash[:decryption] = decryption.join
      decrypted_hash[:key] = key
      decrypted_hash[:date] = date
    end
    decrypted_hash
  end
end
