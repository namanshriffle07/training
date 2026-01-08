file = File.new("name.txt","w")
puts "Enter content to write in the file"
content = gets()
file.syswrite(content)
file.close
