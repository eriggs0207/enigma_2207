class DateGenerator

  def self.date
    DateTime.now.strftime("%m%d%y")
  end
end
