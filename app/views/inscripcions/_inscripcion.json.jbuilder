json.extract! inscripcion, :id, :fecha, :estudiante_id, :curso_id, :monto, :created_at, :updated_at
json.url inscripcion_url(inscripcion, format: :json)
