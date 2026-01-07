
def demons
    puts "Stranger things has the creature named "
    yield "Demogorgan"
end

demons{|creature| puts creature}