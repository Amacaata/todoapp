json.extract! project, :id, :name, :user_id, :team_id, :created_at, :updated_at
json.url project_url(project, format: :json)