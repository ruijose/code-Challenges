def pairs(file=File.open(ARGV.first,"r"))
  file.readlines.each do |line|
    numbers, x_number = line.split(";")
    result = check_numbers(numbers.split(","),x_number.to_i)
    result << "NULL" if result.empty?
    puts result.join(";")
  end
end

def check_numbers(numbers,x_number)
  result = []
  numbers.each do |n1|
    numbers.each do |n2|
      next unless n1.to_i != n2.to_i
      if n1.to_i + n2.to_i == x_number.to_i
        result << n1 + "," + n2 unless result.include?(n2 + "," + n1)
      end
    end
  end
  result
end

pairs




