json.extract! activity, :id, :description, :start_date, :end_date, :finished, :project_id, :created_at, :updated_at
json.url activity_url(activity, format: :json)
