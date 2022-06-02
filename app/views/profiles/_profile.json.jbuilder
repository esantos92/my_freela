json.extract! profile, :id, :user_id, :monthly_budget, :value_hour, :days_per_week, :hours_per_day, :github_profile, :created_at, :updated_at
json.url profile_url(profile, format: :json)
