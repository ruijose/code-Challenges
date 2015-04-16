def ones(file=File.open(ARGV.first,"r"))
  file.readlines.each { |line| count(line.to_i.to_s(2)) }
end

def count(binary)
  puts binary.chars.map(&:to_i).reduce(0) { |result,n| result += 1 if n==1; result }
end

ones
