require 'date'
require './lib/enigma'
require './spec/spec_helper'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new
  end

  it 'does exist' do
    expect(@enigma).to be_instance_of(Enigma)
  end

  xit 'can encrypt' do
    expected_hash = {
                      encryption: "keder ohulw",
                      key: "02715",
                      date: "040895"
                    }

    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq(expected_hash)
  end

  xit 'can decrypt' do
    expected_hash = {
                      decryption: "hello world",
                      key: "02715",
                      date: "040895"
                    }

    expect(@enigma.decrypt("keder ohulw", "02715", "040895")).to eq(expected_hash)
  end
end
