#  1. Convert an array of arrays into a hash.
#     For example, [[1, 3], [8, 9], [2, 16]] becomes {1 => 3, 8 => 9, 2 => 16}.
# pairs = [[1, 3], [8, 9], [2, 16]]
# pairs_hash = {} #set up empty variable for hash
# index = 0
# while index < pairs.length #while loop, interating through entire array "pairs"
#   key = pairs[index][0] #assigning a variable called "key" to the value of the first element in every one the pairs arrays 1 , 8, 
#   value = pairs[index][1] #assigning a variable called "value" to the value of the second element in every one the pairs arrays 3, 9
#   pairs_hash[key] = value #{1 => 3, 8 => 9, 2 => 16}
#   # 
#   index += 1
# end

# p pairs_hash


#  2. Convert an array of hashes into a hash using the :id key from the array's hashes as the keys in the new hash.
#     For example, [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}] becomes {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}.
# pillows = [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}]
# pillows_hash = {}
# index = 0 
# while index < pillows.length
#  pillow = pillows[index] #each individual pillow, entire hash of that pillow {id: 1, color: "blue", price: 32}
#  pillow_id = pillow[:id]
#  pillows_hash[pillow_id] = pillow
#  index += 1
# end

# p pillows_hash

#  3. Convert a string into a hash with keys for each letter in the string and values for the number of times the letter appears in the string.
#     For example, "bookkeeper" becomes {"b" => 1, "o" => 2, "k" => 2, "e" => 3, "p" => 1, "r" => 1}.
# word = "bookkeeper"
# letter_frequencies = {}
# index = 0 
# while index < word.length
#  letter = word[index] # will loop through each letter of the string "bookkeeper" letter is key "b", "o"
#  if letter_frequencies[letter] == nil #if letter isn't in hash, add it to hash
#   letter_frequencies[letter] = 1 # set frequency value to 1
#  else 
#   letter_frequencies[letter] += 1 #frequency counter
#  end 
#  index += 1
# end 

# p letter_frequencies

#  4. Convert a hash into an array of arrays.
#     For example, {"chair" => 100, "book" => 14} becomes [["chair", 100], ["book", 14]].
items = {"chair" => 100, "book" => 14}
array_of_arrays = [] #set up empty array
index = 0 #set index to zero
while index < items.length # iterate through items until last item 
  items.each do |name, price| #apply variable names/keys to each value
    array_of_arrays << [name, price] #shovel in arrays into new empty array
  index += 1 # add one to index until we have looped through each of the items hash
  end 
end

p array_of_arrays


#  5. Convert a hash into an array of hashes using the keys from each hash as the :id key in each of the array's hashes.
#     For example, {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}} becomes [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}].
information = {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}} 
personal_information = []
information.each do |id, person|
  person[:id] = id
  personal_information << person
end

p personal_information


#  6. Convert an array of strings into a hash with keys for each string in the array and values for the number of times the string appears in the array.
#     For example, ["do", "or", "do", "not"] becomes {"do" => 2, "or" => 1, "not" => 1}.
array_of_strings = ["do", "or", "do", "not"]
string_frequencies = {}
index = 0 
while index < array_of_strings.length
  string = array_of_strings[index] 
  p string
  if string_frequencies[string] == nil
    string_frequencies[string] = 0
  end
  string_frequencies[string] += 1
  index += 1
end

p string_frequencies

#  7. Convert a hash into a flat array containing all the hash’s keys and values.
#     For example, {"a" => 1, "b" => 2, "c" => 3, "d" => 4} becomes ["a", 1, "b", 2, "c", 3, "d", 4].

# hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
# flat_array = []
# hash.each do |key, value|
#   flat_array << key
#   flat_array << value
# end

# p flat_array

#  8. Combine data from a hash with names and prices and an array of hashes with names, colors, and weights to make a new hash.
#     For example, {"chair" => 75, "book" => 15} and [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}] becomes {"chair" => {price: 75, color: "red", weight: 10}, "book" => {price: 15, color: "black", weight: 1}}.


#  9. Convert an array of hashes into a hash of arrays, using the author as keys and the titles as values.
#     For example, [{author: "Jeff Smith", title: "Bone"}, {author: "George Orwell", title: "1984"}, {author: "Jeff Smith", title: "RASL"}] becomes {"Jeff Smith" => ["Bone", "RASL"], "George Orwell" => ["1984"]}.

# 10. Given a hash, create a new hash that has the keys and values switched.
#     For example, {"a" => 1, "b" => 2, "c" => 3} becomes {1 => "a", 2 => "b", 3 => "c"}.

# 11. Given a string, write a function that returns true if the “$” character is contained within the string or false if it is not.

# Input: “i hate $ but i love money i know i know im crazy”
# Output: true

# Input: “abcdefghijklmnopqrstuvwxyz”
# Output: false

## set up a function that takes in a string parameter
def lookingForMoney(string)
index = 0 ## set index to 0 while we iterate through the string
## while loop 
while index < string.length ##looping through each element of the string
  # p input[index] this is equal to 'i'
 if string[index].include?('h') #shortcut
 return true
 else 
 return false
  # if input[index] = "$" ## if conditional -- does string contain $ symbol?
  #   ## function returns boolean
  #   return true #boolean
  # else 
  #   return false
  end
  index += 1
  
end 
end

p lookingForMoney('i hate $ but i love money i know i know im crazy') ## with the $ symbol you have to use single quotation marks 






## function returns boolean



