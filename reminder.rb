=begin
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.
=end

class Tasks
    def initialize(name) # name is a string
      @name = name
      @list = []
    end
  
    def show_tasks(task) # task is a string
      @todo = task
      @list << @todo
    end
  

    def remind()
      # Throws an exception if no task is set
      fail “List is empty!” if @list.empty?
      # Otherwise, returns a string reminding the user to do the task
      puts @list
    end

    def mark_completed(task)
      @completed_task = task
      if @list.include?(@completed_task)
        @list.delete(@completed_task)
    end
  end

# EXAMPLE

tasks = Tasks.new("Kay")
tasks.show_tasks("Walk the dog")
tasks.show_tasks("Go to the gym")
tasks.remind()

