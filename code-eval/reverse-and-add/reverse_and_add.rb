def reverse_and_add_of(file=File.open(ARGV.first, "r"))
  file.readlines.each do |line|
    iter = 1
    sum = line.reverse.to_i + line.to_i
    while (!is_palindrome?(sum))
      iter += 1
      sum = sum.to_s.reverse.to_i + sum
    end
    puts "#{iter} #{sum}"
  end
end

def is_palindrome?(number)
  number.to_s == number.to_s.reverse
end
  
reverse_and_add_of