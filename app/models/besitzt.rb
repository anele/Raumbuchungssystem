class Besitzt < ActiveRecord::Base
  attr_accessible :ausstattung_id, :raum_id
  belongs_to :raum
  belongs_to :ausstattung
end
