json.extract! profile, :id, :name, :rating, :uuid, :description, :created_at, :updated_at
json.url profile_url(profile, format: :json)