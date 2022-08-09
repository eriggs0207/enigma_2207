require './lib/enigma'
require './lib/key_generator'
require './lib/date_generator'
require './lib/offset_generator'

message = File.open("./lib/message.txt","r")
key =  ARGV[1]
date = ARGV[2]

puts message
puts key
puts date
enigma = Enigma.new(message, key ,date)


enigma.encrypt(message, key, date)
