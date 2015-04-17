#solution 1
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

#solution2
def remove_chars2_of(file = File.open(ARGV.first, "r"))
  file.readlines.each do |line|
    mainString, removeString = line.split(",").map(&:strip) #mass assign like a boss
    puts removeString.chars.reduce(mainString) { |result,char| result.gsub(char, "") }
  end
end
