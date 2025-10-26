json.extract! task, :id, :task, :finished_at, :created_at, :updated_at
json.url task_url(task, format: :json)
