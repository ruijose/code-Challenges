ALPHABET1 = ("a".."z").to_a
ALPHABET2 = ("A".."Z").to_a
def caesar_cipher_of(word,shift)
  word.each_char.each_with_object("") do |c,result|
    /[a-zA-Z]/.match(c) ? result << rotate(c,shift) : result << c
  end
end

def rotate(c,rot)
  ALPHABET1.include?(c) ? ALPHABET1.rotate(rot)[ALPHABET1.index(c)] : ALPHABET2.rotate(rot)[ALPHABET2.index(c)]
end

