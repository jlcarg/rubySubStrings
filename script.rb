dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(phrase, dictionary)
  possible_substrings = get_phrase_substrings(phrase)
  substring_count = possible_substrings.reduce(Hash.new(0)) do |hash, substring|
    if dictionary.include?(substring)
      hash[substring] += 1
      hash
    else
      hash
    end
  end
  puts substring_count
end

def get_phrase_substrings(phrase)
  arr_of_words = phrase.split(" ")
  all_possible_subs = arr_of_words.reduce([]) do |arr, word|
    arr << get_word_substrings(word)
    arr
  end
  all_possible_subs.flatten
end

def get_word_substrings(string)
  string_into_array = string.downcase.split("")
  number_of_letters = string_into_array.length
  possible_substrings = []
  string_into_array.each_with_index do |letter, i|
    (0..number_of_letters).each do |j|
      unless string_into_array[i, j] == [] || possible_substrings.include?(string_into_array[i, j].join(""))
        possible_substrings << string_into_array[i, j].join("")
      end
    end
  end
  possible_substrings
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
substrings("below", dictionary)