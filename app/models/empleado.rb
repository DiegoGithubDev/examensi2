class Empleado < ApplicationRecord
  has_many :lugar_de_trabajos
  has_many :rastreos
end
