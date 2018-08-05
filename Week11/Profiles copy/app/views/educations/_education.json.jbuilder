json.extract! education, :id, :start_date, :end_date, :institution, :course, :description, :created_at, :updated_at
json.url education_url(education, format: :json)
