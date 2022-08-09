class Enigma
  attr_reader :message,
              :key,
              :date,
              :char_set,
              :total_offset
  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
    @char_set = ("a".."z").to_a << " "
    @total_offset = total_offset
  end

  def calculate_total_offset(key, date)
    offset = OffsetGenerator.new(key, date)
    offset.generate_key_offset
    offset.generate_date_offset
    @key = offset.key
    @date = offset.date
    @total_offset = offset.generate_total_offset
  end

  def encrypt(message, key, date)
    calculate_total_offset(key, date)
    encrypted_hash = Hash.new(0)
    encryption = []
      altered_message = message.downcase.chomp
        altered_message.chars.each.with_index do |letter,index|
          new_offset = @char_set.find_index(letter) + @total_offset[index % 4]
          encryption << @char_set[new_offset % 27]
      encrypted_hash[:encryption] = encryption.join
      encrypted_hash[:key] = key
      encrypted_hash[:date] = date
    end
    encrypted_hash
  end

  def decrypt(message, key, date)
    calculate_total_offset(key, date)
    decrypted_hash = Hash.new(0)
    decryption = []
      message.chars.each.with_index do |letter,index|
        new_offset = @char_set.find_index(letter) - @total_offset[index % 4]
        decryption << @char_set[new_offset % 27]
      decrypted_hash[:decryption] = decryption.join
      decrypted_hash[:key] = key
      decrypted_hash[:date] = date
    end
    decrypted_hash
  end
end
