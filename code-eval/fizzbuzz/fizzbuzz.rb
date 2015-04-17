def fizzbuzz_of(file = File.open(ARGV.first, "r"))
  file.readlines.each do |line|
    x, y, n = line.split(" ").map(&:to_i)
    puts divisors_of(x,y,n).join(" ") 
  end
end

def divisors_of(x,y,n)
  (1..n).each_with_object([]) do |number,result|
    result << "F" if number % x == 0
    result << "B" if number % y == 0
    result << "FB" if number % y == 0 && number % x == 0
    if not (number % x == 0 || number % y == 0 || (number % y == 0 && number % x == 0))
      result << number
    end
  end
end
