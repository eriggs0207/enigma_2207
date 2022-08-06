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
    expected_hash = {
                    :a => 1,
                    :b => 0,
                    :c => 2,
                    :d => 5
    }
    expect(@offset_generator.date_offset).to eq(expected_hash)
  end
  it 'can create the offset from the key' do
    expected_hash = {
                    :a => 02,
                    :b => 27,
                    :c => 71,
                    :d => 15
    }
    expect(@offset_generator.key_offset).to eq(expected_hash)
  end

  it 'can create the total offset' do
    expected_hash = {
                    :a => 03,
                    :b => 27,
                    :c => 73,
                    :d => 20
    }
    expect(@offset_generator.total_offset).to eq(expected_hash)
  end
end
