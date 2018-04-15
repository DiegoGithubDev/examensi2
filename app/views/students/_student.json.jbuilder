json.extract! student, :id, :course_id, :father_id, :nombre, :apellido, :created_at, :updated_at
json.url student_url(student, format: :json)
