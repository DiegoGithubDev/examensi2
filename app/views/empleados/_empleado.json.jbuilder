json.extract! empleado, :id, :nombre, :apellido, :cargo, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)
