def palindromic_ranges_of(file = File.open(ARGV.first, "r"))
  file.readlines.each do |line|
    number_of_palindromes = 0
    min_number, max_number = line.split.map(&:to_i)
    ranges_of(min_number,max_number).each do |pair| # subrange
      number_of_palindromes += 1 if palindrome_filter_of(pair).size.even?
    end
    p number_of_palindromes
  end
end

def palindrome_filter_of(pairs) # palindromes filter
  pairs.select { |n| is_palindrome?(n) }
end

def is_palindrome?(number)
  number.to_s.split("") == number.to_s.split("").reverse
end

def ranges_of(min,max)
  (min..max).each_with_object([]) do |n,res|
    (n..max).each do |i|
      res << [*n..i]
    end
  end
end

palindromic_ranges_of

