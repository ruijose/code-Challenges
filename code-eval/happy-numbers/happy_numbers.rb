def happy_number_of(file = File.open(ARGV.first,"r"))
  file.readlines.each do |line|
    res = line.strip.to_i
    all_numbers = []
    while (res > 1) && (!all_numbers.include?(res))
      all_numbers << res
      res = sum_squares_of(res)
    end
    puts res == 1 ? "1" : "0"
  end
end

def sum_squares_of(number)
  number.to_s.chars.map(&:to_i).reduce(0) { |result,n| result += n ** 2 }
end

happy_number_of
