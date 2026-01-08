class Main
  @@count = 0
  def counter 
    @@count += 1
  end

  def printcounter
    puts "Counter Value : #{@@count}"
  end
end

aa = Main.new
aa.counter
bb = Main.new
bb.counter
cc = Main.new
cc.printcounter