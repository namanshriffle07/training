class A
  private
  def method1
    puts "Method 1 Called"
  end

  
  def A.method2
    aa = A.new
    aa.send(:method1)
  end
end


A.method2
# aa.method1 //executing this will cause an error (private method called)