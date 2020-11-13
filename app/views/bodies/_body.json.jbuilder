json.extract! body, :id, :name, :type, :created_at, :updated_at
json.url body_url(body, format: :json)
