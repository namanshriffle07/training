class Base
  def printName
    puts "My name is Khan"
  end
end

class Derived < Base
  def printName
    puts "My name is Pran"
  end
end

aa = Derived.new
aa.printName