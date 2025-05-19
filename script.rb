dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  string = 'below'
  string_length = string.length
  string_into_array = string.split("")
  string_into_array.reduce(Hash.new(0)) do |hash, letter|
    letter
  end
end

def separate_possible_substrings2(string)
  string_into_array = string.split ("")
  number_of_letters = string_into_array.size
  possible_substrings = []
  string_into_array.each_with_index do |letter, i|
    (i..number_of_letters).each do |j|
      p string_into_array[i, j]
      p string_into_array[i, j] != []
      unless string_into_array[i, j] == [] || possible_substrings.include?(string_into_array[i, j].join(""))
        p string_into_array[i, j]
        possible_substrings << string_into_array[i, j].join("")
      end
    end
  end
  possible_substrings
end