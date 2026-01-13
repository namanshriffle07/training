class Main
  NAME = "Naman Bhawsar"

  def Main.printName
    puts "Name inside class is :  #{NAME}"
  end
end

Main.printName 
puts "Name outside the class is : #{Main::NAME}"

