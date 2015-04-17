def fizzbuzz_of(file = File.open(ARGV.first, "r"))
  file.readlines.each do |line|
    x, y, n = line.split(" ").map(&:to_i)
    puts divisors_of(x,y,n).join(" ") 
  end
end

def divisors_of(x,y,n)
  (1..n).each_with_object([]) do |number,result|
    if (number % x == 0 && number % y == 0)
      result << "FB"
    elsif (number % x == 0)
      result << "F"
    elsif (number % y == 0)
      result << "B"
    else
      result << number
    end
  end
end

fizzbuzz_of
