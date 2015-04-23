def last_element_of(file = File.open(ARGV.first, "r"))
  file.readlines.each do |line|
    numbers = line.split(" ")
    index = numbers.last
    puts numbers[0..-2].reverse[index.to_i-1] unless index.to_i > numbers.length-1
  end
end

last_element_of