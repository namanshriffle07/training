class A
  def printHello(name)
    puts "Hello #{name} from parent class"
  end
end

class B < A
  def printHello(name)
    super
  end
end

bb = B.new
bb.printHello "Naman Bhawsar"