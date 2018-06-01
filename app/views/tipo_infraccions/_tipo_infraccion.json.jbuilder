json.extract! tipo_infraccion, :id, :nombre, :monto, :created_at, :updated_at
json.url tipo_infraccion_url(tipo_infraccion, format: :json)
