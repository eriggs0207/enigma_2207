require './lib/key_generator'

RSpec.describe KeyGenerator do
  before :each do
    @key_generator = KeyGenerator.new
  end

  it 'does exist and has attributes' do
    expect(@key_generator).to be_instance_of(KeyGenerator)
    # expect(@key_generator.key).to eq()
  end

  xit 'can generate a key randomly' do
    fake_data = "12345"
    allow(KeyGenerator).to receive(:key).and_return(fake_data)
    expect(@key_generator.randomizer).to eq("12345")
  end
end
