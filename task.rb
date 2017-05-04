class Task
  attr_reader :name
  attr_accessor :complete

  def initialize(name)
    @name = name
    @complete = false
  end

  def complete!
    @complete = true
  end

  def toggle_complete! 
    @complete = !@complete
    # if @complete
    #   @complete = false
    # else
    #   @complete = true
    # end
  end
end