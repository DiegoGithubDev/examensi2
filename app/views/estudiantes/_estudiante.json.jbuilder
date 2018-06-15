json.extract! estudiante, :id, :nombre, :apellido_paterno, :apellido_materno, :created_at, :updated_at
json.url estudiante_url(estudiante, format: :json)
