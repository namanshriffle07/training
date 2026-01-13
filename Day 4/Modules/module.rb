require_relative 'Hello'

class MeetAndGreet
  include Hello
  puts "Name extracted from module is : #{Hello::NAME}"
  def execute
    Hello.greet "Naman"
  end
end
# Included module after require

aa = MeetAndGreet.new
aa.execute
puts Hello::NAME
Hello.greet "Ritesh"