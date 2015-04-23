require 'prime'

def primes_of(file = File.open(ARGV.first, "r"))
  file.readlines.each do |line|
    sum = 0
    min_number, max_number = line.split(",")
    (min_number.to_i..max_number.to_i).each do |n|
      sum += 1 if is_prime?(n)
    end
    puts sum
  end
end

def is_prime?(number)
  Prime.prime?(number)
end

primes_of