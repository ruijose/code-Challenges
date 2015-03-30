def substrings_of(word,dic)
  dic.each_with_object(Hash.new(0)) do |value,result|
    words = word.downcase.scan(value)
    result[value] += words.count if words.any?
  end
end
dictionary = ["below","down","go","going","horn","how", "howdy","o","it","i","low","own","part","partner","sit"]
puts substrings_of("Howdy partner, sit down! How's it going?", dictionary)