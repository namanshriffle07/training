class A
  def printName()
    puts "My name is Naman Bhawsar and i dont want any arguments"
  end
end

class B < A
  def printName(name,age)
    super()
  end
end

bb = B.new
bb.printName "Suraj Rathore",22