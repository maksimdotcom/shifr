require 'digest'

puts "Введите слово или фразу для шифрирования"
user_input = gets.chomp

ask_cipher = <<~ASK_CIPHER
Каким способом зашифровать:
1. MD5
2. SHA1

ASK_CIPHER

puts ask_cipher

user_cipher = gets.to_i

if user_cipher == 1
  puts Digest::MD5.hexdigest user_input
elsif user_input == 2
  puts Digest::SHA1.hexdigest user_input
elsif
  puts Digest::SHA2.hexdigest user_input
end

