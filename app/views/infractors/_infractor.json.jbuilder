json.extract! infractor, :id, :nombre, :apellido_paterno, :apellido_materno, :numero_de_licencia, :fecha_de_emision, :fecha_de_vencimiento, :sexo, :nacionalidad, :created_at, :updated_at
json.url infractor_url(infractor, format: :json)
