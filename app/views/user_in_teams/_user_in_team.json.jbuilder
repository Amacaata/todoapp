json.extract! user_in_team, :id, :user_id, :team_id, :created_at, :updated_at
json.url user_in_team_url(user_in_team, format: :json)