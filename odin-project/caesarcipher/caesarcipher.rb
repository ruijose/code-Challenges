ALPHABET1 = ("a".."z").to_a
ALPHABET2 = ("A".."Z").to_a
def caesar_cipher_of(word,shift)
  result = ""
  word.each_char do |c|
    if /[a-zA-Z]/.match(c)
      result << rotate(c,shift)
    else
      result << c
    end
  end
  result
end

def rotate(c,rot)
  ALPHABET1.include?(c) ? ALPHABET1.rotate(rot)[ALPHABET1.index(c)] : ALPHABET2.rotate(rot)[ALPHABET2.index(c)]
end

puts caesar_cipher_of("ola dias!",5)
