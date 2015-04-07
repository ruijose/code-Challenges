def substrings_of(word,dic)
  dic.each_with_object(Hash.new(0)) do |value,result|
    words = word.downcase.scan(value)
    result[value] += words.count if words.any?
  end
end
