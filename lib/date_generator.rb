require 'date'

class DateGenerator
  attr_reader :date
  def initialize(date = DateTime.now.strftime("%m%d%y"))
    @date = date
  end
end
