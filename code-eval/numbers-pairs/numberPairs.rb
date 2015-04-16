def pairs(file=File.open(ARGV.first,"r"))
  file.readlines.each do |line|
    xNumber = line.split(";")[1].to_i
    numbers = line.split(";")[0].split(",")
    result = cycles(numbers,xNumber)
    result << "NULL" if result.empty?
    puts result.join(";")
  end
end

def cycles(numbers,xNumber)
  result = []
  numbers.each do |n1|
    numbers.each do |n2|
      next unless n1.to_i != n2.to_i
      if n1.to_i + n2.to_i == xNumber.to_i
        result << n1.to_s + "," + n2.to_s unless result.include?(n2.to_s + "," + n1.to_s)
      end
    end
  end
  result
end






