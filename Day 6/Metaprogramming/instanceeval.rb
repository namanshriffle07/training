class User 
end

aa = User.new

aa.instance_eval do
  def newinstance 
    puts "This will be related to that instance only"
  end
end

aa.newinstance