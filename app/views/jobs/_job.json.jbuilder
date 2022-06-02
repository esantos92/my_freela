json.extract! job, :id, :name, :daily_hours, :total_hours, :profile_id, :created_at, :updated_at
json.url job_url(job, format: :json)
