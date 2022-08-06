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
      @date == @date_generator.date
    else
      return
    end
    shift = @offset_generator.total_offset(@key.key_offset, @date.date_offset)
    require 'pry'; binding.pry
    encryption = []
      until message[-1]
        message.split("").each do |letter|
        if @character_set.include?(letter.downcase)
          # encryption += @character_set(@character_set.index(letter) + shift[:a])
          shifted_characters = shift[a:].times {letter = letter.next}
          encryption << shifted_characters
        end
        message.split("").each do |letter|
        if @character_set.include?(letter.downcase)
          # encryption += @character_set(@character_set.index(letter) + shift[:a])
          shifted_characters = shift[b:].times {letter = letter.next}
          encryption << shifted_characters
        end
        message.split("").each do |letter|
        if @character_set.include?(letter.downcase)
          # encryption += @character_set(@character_set.index(letter) + shift[:a])
          shifted_characters = shift[c:].times {letter = letter.next}
          encryption << shifted_characters
        end
        message.split("").each do |letter|
        if @character_set.include?(letter.downcase)
          # encryption += @character_set(@character_set.index(letter) + shift[:a])
          shifted_characters = shift[d:].times {letter = letter.next}
          encryption << shifted_characters
          end
        end
        encryption
      end
      encrypted_hash = Hash.new(0)
      encrypted_hash[:encryption] = encryption
      encrypted_hash[:key] = @key
      encrypted_hash[:date] = @date
    end
    encrypted_hash
  end
end
