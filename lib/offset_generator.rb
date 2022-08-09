class OffsetGenerator
  attr_reader :key,
              :date,
              :date_offset,
              :key_offset,
              :shift 
  def initialize(key, date)
    @key = key
    @date = date
  end

  def generate_date_offset
    sq = @date.to_i ** 2
    set = sq.to_s.slice(-4..-1)
    a = set[0].to_i
    b = set[1].to_i
    c = set[2].to_i
    d = set[3].to_i
    @date_offset = [a, b, c, d]
  end

  def generate_key_offset
    a = @key.slice(0..1).to_i
    b = @key.slice(1..2).to_i
    c = @key.slice(2..3).to_i
    d = @key.slice(3..4).to_i
    @key_offset = [a, b, c, d]
  end

  def generate_shift
    total = @key_offset.zip(@date_offset)
    total.map do |key|
    @shift = key.sum
    end
  end
end
