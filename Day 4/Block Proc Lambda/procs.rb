double_proc = Proc.new do |i|
  puts i*2
end

arr = [1,2,3,4,5]
arr.each(&double_proc)