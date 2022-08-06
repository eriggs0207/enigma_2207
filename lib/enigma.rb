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
    @key =
    @date = 
    shift = @offset_generator.total_offset(@key.key_offset, @date.date_offset)
    encryption = ""
    message.split("").each do |letter|
      if @character_set.include?(letter)
      end

    end
  end
end
