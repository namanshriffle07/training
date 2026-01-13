def print_proc
  prc = Proc.new {return "Return from proc"}
  prc_val = prc.call
  puts prc_val
  puts "proc executed successfully"
end

print_proc