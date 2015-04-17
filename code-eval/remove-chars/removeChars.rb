def remove_chars_of(file = File.open(ARGV.first, "r"))
  file.readlines.each do |line|
    split = line.split(",")
    stringToRemove = split[1].strip
    originalString = split[0].strip
    stringToRemove.chars.each do |char|
      originalString = originalString.delete(char)
    end
    puts originalString
  end
end

remove_chars_of