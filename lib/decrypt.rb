require './lib/enigma'
require './lib/offset_generator'


message = File.open(ARGV[0],"r").read
key = ARGV[2]
date = ARGV[3]

enigma = Enigma.new(message, key ,date)


decrypted = enigma.decrypt(message, key, date)

decrypt = File.open(ARGV[1], "w").write(decrypted[:decryption])

puts "Created decryption: #{decrypted[:decryption]}\n with the key: #{key}\n and the date: #{date}"
