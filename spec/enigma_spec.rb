require './lib/enigma'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new("hello world")
  end

  it 'does exist' do
    expect(@enigma).to be_instance_of(Enigma)
  end
end
