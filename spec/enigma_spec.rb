require 'date'
require './lib/enigma'
require './lib/key_generator'
# require './lib/date_generator'
require './lib/offset_generator'
require './spec/spec_helper'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new("hello world", "02715", "040895")
  end

  it 'does exist and has attributes' do
    expect(@enigma).to be_instance_of(Enigma)
    expect(@enigma.message).to eq("hello world")
    expect(@enigma.key).to eq("02715")
    expect(@enigma.date).to eq("040895")
    expect(@enigma.character_set).to eq(("a".."z").to_a << " ")
  end

  it 'can calculate_shift' do
    offset = OffsetGenerator.new("02715", "040895")
    @enigma.calculate_shift("02715", "040895")
    expect(@enigma.shift).to eq([3, 27, 73, 20])
  end

  it 'can encrypt' do
    expected_hash = {
                      encryption: "keder ohulw",
                      key: "02715",
                      date: "040895"
                    }

    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq(expected_hash)
  end

  it 'can decrypt' do
    expected_hash = {
                      decryption: "hello world",
                      key: "02715",
                      date: "040895"
                    }

    expect(@enigma.decrypt("keder ohulw", "02715", "040895")).to eq(expected_hash)
  end
end
