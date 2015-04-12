def lines
  lines = File.open(ARGV.first, 'r').readlines
  numberOutputs = lines[0]
  hash = lines_length(lines[1..-1])
  ordered_lines(hash_values(hash), numberOutputs.to_i, hash).sort_by(&:length).reverse
end

def lines_length(lines) # return a hash with the length of each line
  lines.each_with_object(Hash.new) { |line,result| result[line] = line.length }
end

def hash_values(hash) # array with hash values
  hash.each_value.each_with_object(Array.new) { |value,result| result << value }
end

def ordered_lines(values,numberOfOutputs,hash)
  values.sort.last(numberOfOutputs).each_with_object(Array.new) do |value,result|
    result << hash.key(value)
  end
end

puts lines


