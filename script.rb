dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  possible_substrings = separate_possible_substrings string
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

def separate_possible_substrings(string)
  string_into_array = string.split ("")
  number_of_letters = string_into_array.size
  possible_substrings = []
  string_into_array.each_with_index do |letter, i|
    (i..number_of_letters).each do |j|
      unless string_into_array[i, j] == [] || possible_substrings.include?(string_into_array[i, j].join(""))
        possible_substrings << string_into_array[i, j].join("")
      end
    end
  end
  possible_substrings
end

substrings("below", dictionary)
# separate_possible_substrings("Howdy partner, sit down! How's it going?")