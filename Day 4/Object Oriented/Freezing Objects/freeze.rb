class Main
  def initialize name
    @name = name
  end

  def setname name
    @name = name
  end

  def getName
    @name
  end
end

aa = Main.new "Naman Bhawsar"
puts "Name is : #{aa.getName}"
aa.freeze

begin
  aa.setname "Suraj Rathore"
rescue
  puts "Value cant be redeclared due to freeze"
end