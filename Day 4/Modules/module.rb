require_relative 'Hello'

class MeetAndGreet
  include Hello
  puts "Name extracted from module is : #{Hello::NAME}"
  def execute
    Hello.greet "Naman"
  end
end

aa = MeetAndGreet.new
aa.execute
puts Hello::NAME
Hello.greet "Ritesh"