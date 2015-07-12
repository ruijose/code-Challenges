#solution 1
def remove_chars_of(file = File.open(ARGV.first, "r"))
  file.readlines.each do |line|
    original_string, string_to_remove = line.split(",").map(&:strip)
    string_to_remove.chars.each do |char|
      original_string = original_string.delete(char)
    end
    puts original_string
  end
end

#solution2
def remove_chars2_of(file = File.open(ARGV.first, "r"))
  file.readlines.each do |line|
    main_string, remove_string = line.split(",").map(&:strip) #mass assign like a boss
    puts remove_string.chars.reduce(main_string) { |result,char| result.gsub(char, "") }
  end
end
