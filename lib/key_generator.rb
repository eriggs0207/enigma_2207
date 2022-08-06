class KeyGenerator
  attr_reader :key
  def initialize(key)
    @key = []
  end


  def randomizer(key)
    if @key.length > 1
      random_key = rand(0..1000)
      @key << random_key.to_s.rjust(5, "0")
    else
      return
    end
  end
end

  # def offset(date)
  #   offsets = Hash.new(0)
  #   sq = date.to_i ** 2
  #   set = sq.slice(-1..-4)
  #   offsets[:a] = set(0)
  #   offsets[:b] = set(1)
  #   offsets[:c] = set(2)
  #   offsets[:d] = set(3)
  # end
  #
  # def shift
  #   shift = Hash.new(0)
  #   shift[:a] = offsets[:a] + the_keys[:a]
  #   shift[:b] = offsets[:b] + the_keys[:b]
  #   shift[:c] = offsets[:c] + the_keys[:c]
  #   shift[:d] = offsets[:d] + the_keys[:d]
