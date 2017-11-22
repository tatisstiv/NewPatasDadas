json.extract! animal, :id, :name, :breed, :color, :size, :created_at, :updated_at
json.url animal_url(animal, format: :json)
