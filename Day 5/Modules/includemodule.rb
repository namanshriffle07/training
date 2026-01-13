require_relative 'Module1'

class NewClass
  @@name = PrintName::Name

  def printdata
    puts "Name is #{@@name}"
  end
end

aa = NewClass.new
aa.printdata