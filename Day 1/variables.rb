puts "Program for global variables"

$name = "Naman Bhawsar"

class A
    def printA
        puts "Name is : "+$name
    end
end

class B
    def printB
        puts "Name is : "+$name
    end
end

aa = A.new
aa.printA
bb = B.new 
bb.printB


puts "Program for instance variables"

class Student
    def initialize(name,age,degree)
        @name = name
        @age = age
        @degree = degree
    end

    def printVal
        puts "Name is #{@name}"
        puts "Age is #{@age}"
        puts "Degree is #{@degree}"
    end
end

naman = Student.new("Naman Bhawsar",22,"MCA")
naman.printVal 

puts "Program for class variables"

class Counter
    @@count = 0
    
    def incrementcounter
        @@count+=1
    end

    def printcounter
        puts "Counter value is : #{@@count}"
    end
end

count1 = Counter.new
count1.incrementcounter

count2 = Counter.new
count2.incrementcounter

count3 = Counter.new
count3.printcounter

puts "Program for local variables"

class Local
    def sumwithfive(num)
        a = 5
        return num+a 
    end
end

zz = Local.new
val = zz.sumwithfive(7)
puts val
    

puts "Program for constant"

class Program
    NAME = "Naman Bhawsar"

    def printname
        puts "Name is : #{NAME}"
    end

    # def reassign
    #     NAME = "Suraj"
    # end

    # commented out this code as it throws an error
end

pp = Program.new
pp.printname
