dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input_words, _dictionary) # _ just to see the diference
  
  output_hash = Hash.new
  input_words.downcase!
  _dictionary.each do |word|
    matches = input_words.scan(word).length
    output_hash[word] = matches unless matches == 0
  end
  return output_hash
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)