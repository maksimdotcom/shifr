require 'digest'

puts "Введите слово или фразу для шифрования: "
x = STDIN.gets.chomp

puts 
puts "Каким способом зашифровать: "
puts "1. MD5"
puts "2. SHA1"

sposob = STDIN.gets.to_i

case sposob
when 1
  puts "Вот что получилось: "
  puts Digest::SHA1.hexdigest x 
when 2
  puts "Вот что получилось: "
  puts Digest::MD5.hexdigest x
end


