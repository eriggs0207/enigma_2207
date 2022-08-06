class KeyGenerator
  attr_reader :key
  def initialize(key = [])
    @key = key
  end

  def randomizer
    if @key.count > 1
      random_key = rand(0..10000)
      @key << random_key.to_s.rjust(5, "0")
    else
      return
    end
  end
end
