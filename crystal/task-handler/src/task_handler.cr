class TaskHandler
  @task_condition_logic : Proc(Int32, Bool)
  def initialize(@tasks : Array(String))
    @task_condition_logic = -> (len : Int32) { len >= 0 }
  end

  def update_task_condition_logic(&block : Int32 -> Bool)
    @task_condition_logic = block
  end

  def execute(priority : Int32)
    return "Could not complete " + @tasks.first unless @task_condition_logic.call(priority)
    "Completed " + @tasks.shift
  end
end
