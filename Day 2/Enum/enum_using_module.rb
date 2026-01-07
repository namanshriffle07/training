module Colors
    ORANGE = 'F54927'
    BLACK = '0A0201'
    WHITE = '0B0321'
end 

class Painting 
    include Colors 
    def painting
        puts "The painting uses the color orange and its hex value is : #{Colors::ORANGE}"
    end
end 

aa = Painting.new
aa.painting