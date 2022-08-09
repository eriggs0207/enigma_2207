require './lib/enigma'
require './lib/key_generator'
require './lib/date_generator'
require './lib/offset_generator'
# require 'pry'; binding.pry
message = File.open(ARGV[0],"r").read
new_key = KeyGenerator.new
key = new_key.randomizer
date = DateGenerator.new.date

enigma = Enigma.new(message, key ,date)


encrypted = enigma.encrypt(message, key, date)

encrypt = File.open(ARGV[1], "w").write(encrypted[:encryption])
