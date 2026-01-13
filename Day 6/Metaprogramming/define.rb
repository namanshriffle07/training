

class NewClass
  arr = [:name,:age,:gender,:city]
  arr.each do |i|
    define_method(i) do
      puts "Method #{i} is defined"
    end
  end
end

aa = NewClass.new 
aa.name 
aa.age
aa.gender
aa.city
