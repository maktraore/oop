class Task
  
  def initialize(name)
    @name = name
    @complete = false
#8a
    @priority = 1
  end
#8a
  def set_priority=(priority)
    @priority = priority
  end
#8.
  def sort_by_priority
    @priority
  end
#5
  def toggle_complete!
    @complete = !@complete
  end
  def name
    return @name
  end
  def delete_complete_tasks
    return @delete_complete_tasks
  end
  def complete
    return @complete
  end

  def complete!
    @complete = true
  end
end
# Create list
list = List.new

# Create tasks and add them to the list
list.add_task(Task.new("Feed the cat"))
list.add_task(Task.new("Take out trash"))
list.add_task(Task.new("Mow the lawn"))

# Print out the second task in the list
puts "Second task:"
puts list.tasks[1].name
puts "---------"

# Get an array containing the names of all incomplete tasks from the list
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts "--------"
puts "number of incomplete tasks: #{list.number_of_incomplete_tasks}"
puts "--------"
# Mark the first task from the list as complete
list.tasks[0].complete!
list.tasks[2].toggle_complete!
list.tasks[0].set_priority=2
p list.tasks
p list.tasks.delete_complete_tasks
p list.tasks.sort_by_priority
# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_task_names
