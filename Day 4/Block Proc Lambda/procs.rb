# First example
double_proc = Proc.new do |i|
  puts i*2
end

arr = [1,2,3,4,5]
arr.each(&double_proc)

# Second Example
new_proc = Proc.new do
  puts "Hello Naman this side"
end

new_proc.call()