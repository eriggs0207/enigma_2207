require 'date'
require './lib/date_generator'

RSpec.describe DateGenerator do
  before :each do
    @date_generator = DateGenerator.new
    @current_date = DateTime.now.strftime("%m%d%y")
  end

  it 'does exist' do
    expect(@date_generator).to be_instance_of(DateGenerator)
  end

  it 'generates the current date' do
    expect(@date_generator.date).to eq(@current_date)
  end
end
# allow(Date).to receive(:today).and_return Date.new(current_date)
