def gronsfeld_cipher_of(key,message)
	new_key = check_size_of(key.to_s, message)
	message.chars.zip(new_key.to_s.chars).each_with_object("") do |(letter,number),result_string|
		result_string << decoding_alphabet.rotate(-number.to_i)[decoding_alphabet.index(letter)]
	end
end

def check_size_of(key, message)
	while 1
		key.chars do |char|
			return key if key.length == message.length
			key = key << char
		end
	end
end

def decoding_alphabet
	" !'#$%&'()*+,-./0123456789:<=>?@".chars + ("A".."Z").to_a + ("a".."z").to_a
end

