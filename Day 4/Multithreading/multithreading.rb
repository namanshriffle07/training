def func1
  i = 0
  while i<=2
    puts "Thread 1 at time"
    sleep(1)
    i += 1
  end
end

def func2 
  i = 0
  while i<=2
    puts "Thread 2 at time"
    sleep(1)
    i += 1
  end
end

t1 = Thread.new{func1}
t2 = Thread.new{func2}
t1.join
t2.join