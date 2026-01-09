class Name
  def initialize(name,age)
    @name = name
    @age = age
  end

  def printName
    puts "Name is : #{@name} and age is : #{@age}"
  end
end

aa = Name.new "Naman Bhawsar",22
aa.printName