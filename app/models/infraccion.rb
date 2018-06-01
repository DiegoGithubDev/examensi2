class Infraccion < ApplicationRecord
  belongs_to :infractor
  belongs_to :policium
  belongs_to :vehiculo
  belongs_to :tipo_infraccion

end
