class Estudiante < ApplicationRecord
  has_many :inscripcions
  def nombre_more_apellidos
    "#{nombre} #{apellido_paterno} #{apellido_materno}"
  end
end
