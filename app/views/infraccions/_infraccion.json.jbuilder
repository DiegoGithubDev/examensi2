json.extract! infraccion, :id, :fecha, :infractor_id, :policia_id, :tipo_infraccion_id, :vehiculo_id, :monto_infracion, :created_at, :updated_at
json.url infraccion_url(infraccion, format: :json)
