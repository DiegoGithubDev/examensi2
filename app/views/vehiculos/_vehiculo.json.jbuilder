json.extract! vehiculo, :id, :placa, :marca, :modelo, :color, :created_at, :updated_at
json.url vehiculo_url(vehiculo, format: :json)
