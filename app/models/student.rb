class Student < ApplicationRecord
 has_many :inscripcions
 def nombre_completely
  "#{nombre}. #{apellido_paterno}. #{apellido_materno}"
 end
end
