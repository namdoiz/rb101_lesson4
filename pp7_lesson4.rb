# Create a hash that expresses the frequency with which 
# each letter occurs in this string:
statement = "The Flintstones Rock"

# My Answer 

statement = statement.delete(" ")
counter = 0
hash = {}
loop do
  hash[statement[counter]] = statement.count(statement[counter])
  counter += 1
  break if counter == statement.size
end
hash


# Solution Provided

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end
result  # => { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# A test to see if they are equal

p hash == result