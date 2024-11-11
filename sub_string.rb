dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input_words, _dictionary) # _ just to see the diference
  auxiliary_array = Array.new
  output_hash = Hash.new
  input_words.downcase!
  j = 2
  i = input_words.length
  auxiliary_array << input_words
  auxiliary_array << input_words.split(//)
  while j < input_words.length - 1
    auxiliary_array << input_words.slice(0, j)
    auxiliary_array << input_words.slice(j, i)
    j = j+1
  end
  auxiliary_array = auxiliary_array & _dictionary
  output_hash = auxiliary_array.reduce(Hash.new(0)) do |result, vote|
    result[vote] += 1
    result
  end
  puts output_hash
end

substrings("below", dictionary)