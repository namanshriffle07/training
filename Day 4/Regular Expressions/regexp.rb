line1 = "Regular expression literals may include an optional modifier to control various aspects of matching. The modifier is specified after the second slash character, as shown previously and may be represented by one of these characters −"

puts "Please enter which word you want to find in the sring"
word = gets.to_s

matched = line1.find(word)

if(matched)
  puts "Word found"
else
  puts "Word not found"
end