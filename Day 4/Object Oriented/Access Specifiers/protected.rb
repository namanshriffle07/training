class A
  protected
  def method1
    puts "protected method called"
  end
end

class B < A
  def method2
    method1
  end
end

bb = B.new
bb.method2