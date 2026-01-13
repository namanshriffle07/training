class A
  def printName name="Naman", surname="Parihar"
    puts "#{name} #{surname}"
  end
end

class B < A
  def printName(name,surname)
    super
    super name
  end

  def printAge
    puts "Age is 23"
  end
end

bb = B.new
bb.printName("Sakshi","Parihar!")
bb.printAge
