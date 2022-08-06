require './lib/key_generator'
require './lib/date_generator'
require './lib/offset_generator'

RSpec.describe OffsetGenerator do
  before :each do
    @offset_generator = OffsetGenerator.new("02715", "040895")
  end

  it 'does exist and has attributes' do
    expect(@offset_generator).to be_instance_of(OffsetGenerator)
    expect(@offset_generator.key).to eq("02715")
    expect(@offset_generator.date).to eq("040895")
  end

  it 'can create the offset from the date' do
    expect(@offset_generator.generate_date_offset).to eq([1, 0, 2, 5])
  end

  it 'can create the offset from the key' do
    expect(@offset_generator.generate_key_offset).to eq([2, 27, 71, 15])
  end

  it 'can create the total offset' do
    expect(@offset_generator.generate_total_offset).to eq([3, 27, 73, 20])
  end
end
