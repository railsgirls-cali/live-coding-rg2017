json.extract! medicament, :id, :name, :description, :brand, :price, :disease_id, :created_at, :updated_at
json.url medicament_url(medicament, format: :json)