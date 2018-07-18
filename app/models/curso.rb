class Curso < ApplicationRecord
  def curso_with_grado
    "#{numero} #{grado}"
  end
end
