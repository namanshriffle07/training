class A
  def method1
    puts "This is the method one"
  end

  public
  def method2
    puts "This is the method two"
  end

  def method3
    puts "This is the method three"
    method1
    self.method1
  end
end

aa = A.new
aa.method1
aa.method2
aa.method3