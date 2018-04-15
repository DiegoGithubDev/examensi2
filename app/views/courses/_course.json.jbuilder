json.extract! course, :id, :numero, :nivel, :teacher_id, :created_at, :updated_at
json.url course_url(course, format: :json)
