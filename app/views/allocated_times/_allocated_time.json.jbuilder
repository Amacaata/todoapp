json.extract! allocated_time, :id, :task_id, :user_id, :done, :start, :end, :notes, :created_at, :updated_at
json.url allocated_time_url(allocated_time, format: :json)