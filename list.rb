class List

  def initialize
    @tasks = []
  end

  def tasks
    return @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_task_names
    task_names = []
    @tasks.each do |task|
      unless task.complete
        task_names << task.name
      end
    end
    return task_names
  end
  def sort_by_priority
    @tasks.sort_by {|a| a.priority}
  end
#6
  def number_of_incomplete_tasks
    incomplete_task_names.length
  end
#7
  def delete_complete_tasks
    i=0 
    @tasks.each do |task|
      @tasks.delete(task) if task.complete
     end
    @tasks
  end
end