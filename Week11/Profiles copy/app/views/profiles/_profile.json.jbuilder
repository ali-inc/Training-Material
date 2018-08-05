json.extract! profile, :id, :summary, :degree, :created_at, :updated_at
json.url profile_url(profile, format: :json)
