class User 
end

User.class_eval do
  def newmethod
    puts "This method is created using class_eval"
  end
end

aa = User.new
aa.newmethod