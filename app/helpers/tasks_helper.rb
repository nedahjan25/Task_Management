module TasksHelper
  def render_tasks(tasks)
    tasks.each do |task|
      render partial: 'task', locals: { task: task }
    end
  end
end
