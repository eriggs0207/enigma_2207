class OffsetGenerator
  attr_reader :key,
              :date
  def initialize(key, date)
    @key = key
    @date = date
    # @date_offset = {}
    # @key_offset = {}
    # @total_offset = {}
  end

  def date_offset
    offsets = Hash.new(0)
    sq = @date.to_i ** 2
    set = sq.to_s.slice(-4..-1)
    offsets[:a] = set[0].to_i
    offsets[:b] = set[1].to_i
    offsets[:c] = set[2].to_i
    offsets[:d] = set[3].to_i
    offsets
  end

  def key_offset
    key_sets = Hash.new(0)
    key_sets[:a] = @key.slice(0..1).to_i
    key_sets[:b] = @key.slice(1..2).to_i
    key_sets[:c] = @key.slice(2..3).to_i
    key_sets[:d] = @key.slice(3..4).to_i
    key_sets
  end

  def total_offset
    total = Hash.new(0)
    total[:a] = (key_offset[:a] + date_offset[:a])
    total[:b] = (key_offset[:b] + date_offset[:b])
    total[:c] = (key_offset[:c] + date_offset[:c])
    total[:d] = (key_offset[:d] + date_offset[:d])
    total
  end
end
