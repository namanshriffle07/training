# Executes the loop until the condition is not satisfied

$i = 0
$n = 5

# Until loop
puts "Until loop"
until $i > $n 
    puts $i
    $i += 1
end 

# Until Modifier
puts "Until Modifier"
begin 
    puts "Naman"
    $i += 1
end until $i > $n 