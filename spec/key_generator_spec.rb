require './lib/key_generator'

RSpec.describe KeyGenerator do
  before :each do
    @key_generator = KeyGenerator.new
  end

  it 'does exist and has attributes' do
    expect(@key_generator).to be_instance_of(KeyGenerator)
    # expect(@key_generator.key).to eq()
  end

  it 'can generate a key randomly' do
    expect(@key_generator.randomizer.to_i).to be_between(0, 99999)
  end
end
