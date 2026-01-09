require 'thread' # Required for Mutex and ConditionVariable

# --- Class Methods Demonstration ---
puts "--- Class Methods Demonstration ---"

# 1. Thread.new/Thread.fork/Thread.start: Create a new thread
#    We will use Thread.new for consistency.
thread1 = Thread.new {
  puts "Thread 1: I'm running!"
  sleep(0.1) # Simulate some work
  Thread.current[:message] = "Hello from Thread 1" # 2. thr[]= : Set a thread-local variable
  puts "Thread 1: My status is #{Thread.current.status}."
} #

thread2 = Thread.new {
  puts "Thread 2: I'm running too!"
  sleep(0.2)
  puts "Thread 2: My priority is #{Thread.current.priority}."
  Thread.stop # 3. Thread.stop: Stop the current thread and schedule another
  puts "Thread 2: I'm awake and finishing up!"
}

# 4. Thread.main: Returns the main thread
puts "Main Thread: I am the main thread: #{Thread.main == Thread.current}."

# 5. Thread.list: Returns an array of all live threads
puts "Main Thread: List of active threads: #{Thread.list.map(&:object_id)}."

# 6. Thread.current: Returns the currently executing thread
puts "Main Thread: The current thread is the main thread: #{Thread.current.object_id}."

# 7. Thread.pass: Invokes the thread scheduler to pass execution to another thread
Thread.pass
puts "Main Thread: Passed execution, but I'm back."

# 8. Thread.abort_on_exception=: Configures global exception handling
Thread.abort_on_exception = true # If any thread raises an exception, the main program will exit

# 9. Thread.kill(aThread)/Thread.exit: Terminates a specified thread or the current one
# We will use the instance method form (thr.kill) later for clarity in the instance methods section.

# --- Instance Methods Demonstration ---
puts "\n--- Instance Methods Demonstration ---"

# Use join to wait for threads to finish, or the main program might exit early
thread1.join
thread2.run # 10. thr.run: Wakes up a sleeping thread
thread2.join # Wait for thread2 to finish

# 11. thr.alive?: Returns true if the thread is running or sleeping
puts "Main Thread: Is thread1 alive? #{thread1.alive?}."
puts "Main Thread: Is thread2 alive? #{thread2.alive?}."

# 12. thr.value: Waits for the thread to finish and returns the value of its last expression
# The last expression in thread1's block was the assignment, the value will be "Hello from Thread 1"
puts "Main Thread: Thread 1's return value is: #{thread1.value}."

# 13. thr.status: Returns the thread's status (e.g., "run", "sleep", false for normal termination)
puts "Main Thread: Thread 1's status is: #{thread1.status}."

# 14. thr.priority=: Sets the thread's priority
thread3 = Thread.new { loop { } } # A simple infinite loop for demonstration
puts "Main Thread: Default thread3 priority: #{thread3.priority}."
thread3.priority = 1 # Set a higher priority
puts "Main Thread: New thread3 priority: #{thread3.priority}."
thread3.kill # 15. thr.kill/thr.exit: Terminate the thread
thread3.join

# 16. thr[:symbol]: Get a thread-local variable
puts "Main Thread: Retrieved message from thread1 using thr[]: #{thread1[:message]}."

# 17. thr.key?: Checks if a thread-local variable key exists
puts "Main Thread: Does thread1 have key :message? #{thread1.key?(:message)}."

# 18. thr.stop?: Returns true if the thread is dead or sleeping
puts "Main Thread: Is thread1 stopped or dead? #{thread1.stop?}."

# 19. thr.raise(anException): Raises an exception in the thread from another thread
thread4 = Thread.new {
  begin
    sleep(1)
  rescue RuntimeError => e
    puts "Thread 4: Caught exception: #{e.message}."
  end
}
sleep(0.1) # Give the thread time to start and potentially sleep
thread4.raise(RuntimeError, "Forcefully raised exception!")
thread4.join

puts "Main Thread: Program finished."
