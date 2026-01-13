class Naman
  def method1
    puts self.__id__
  end

  def self.printName
    puts self.__id__
  end
end

Naman.printName
aa = Naman.new
aa.method1