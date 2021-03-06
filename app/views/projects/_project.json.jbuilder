# frozen_string_literal: true

json.extract! project, :id, :description, :start_date, :end_date, :created_at, :updated_at
json.url project_url(project, format: :json)
