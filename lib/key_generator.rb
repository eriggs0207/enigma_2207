class KeyGenerator
  attr_reader :key
  def initialize(key = "")
    @key = nil
  end

  def randomizer
    @key = @key ? @key.rjust(5, "0") : rand(0..10000).to_s.rjust(5, "0")
  end
end
