class Raum < ActiveRecord::Base
  belongs_to :ausstattung
  attr_accessible :etage, :groesse, :name, :pers_anz, :raum_id, :status
end
