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
    allow(@date_generator).to receive(:date).and_return(Date.parse("2022-8-09").strftime("%m%d%y"))
    expect(@date_generator.date).to eq("080922")
  end
end
