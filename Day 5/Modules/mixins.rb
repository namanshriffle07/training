module A
  def a 
    puts "in module A"
  end
end

class B
  extend A
  def a 
    puts "in class B"
  end
end

B.a 
bb = B.new 
bb.a