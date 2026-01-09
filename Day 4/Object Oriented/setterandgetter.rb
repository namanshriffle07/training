class Name
  def setData(name,age)
    @name = name
    @age = age
  end

  def getName
    return @name
  end

  def getAge
    return @age
  end
end

aa = Name.new 
aa.setData "Naman Bhawsar",22
name = aa.getName
age = aa.getAge
puts "Name is #{name} and age is #{age}"