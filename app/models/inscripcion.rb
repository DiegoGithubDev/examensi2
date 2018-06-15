class Inscripcion < ApplicationRecord
  belongs_to :estudiante
  belongs_to :curso
  belongs_to :paralelo
end
