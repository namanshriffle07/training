class Ruby
  private
  def method1
    puts "This is the private method"
  end
end

aa = Ruby.new

begin 
puts "Calling private method"
raise "Private method called"
aa.method
rescue
  puts "Could not call private methods"
end
puts "Retrying calling with send method"
aa.send(:method1)