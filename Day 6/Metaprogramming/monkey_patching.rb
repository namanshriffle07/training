class String
  def reverse
    super.split("").reverse.join("")
  end
end

puts "hello, world".reverse!
