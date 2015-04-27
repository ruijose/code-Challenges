require 'prime'

def primes_of(file = File.open(ARGV.first, "r"))
  file.readlines.each do |line|
    min_number, max_number = line.split(",")
    puts (min_number.to_i..max_number.to_i).reduce(0) { |res,n| res += 1 if is_prime?(n) ; res }
  end
end

def is_prime?(number)
  Prime.prime?(number)
end

primes_of
