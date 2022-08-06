require './lib/key_generator'

RSpec.describe KeyGenerator do
  before :each do
    @key_generator = KeyGenerator.new(0)
  end

  it 'does exist and has attributes' do
    expect(@key_generator).to be_instance_of(KeyGenerator)
    expect(@key_generator.key).to eq([])
  end

  xit 'can generate a key randomly' do
    expect(@key_generator.randomizer).to eq()
  end
end
