class Inscripcion < ApplicationRecord
  belongs_to :student
  belongs_to :curso
  belongs_to :paralelo
end
