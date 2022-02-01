# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]


=begin
ben = flintstones.each_with_object({}) do |name, hash| 
  hash[name]=flintstones.index(name)
end

p ben
=end
counter = 0
hash = {}

loop do
  break if counter == flintstones.size
  hash[flintstones[counter]] = flintstones.index(flintstones[counter])
  counter += 1
end
p hash