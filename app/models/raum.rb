class Raum < ActiveRecord::Base
  belongs_to :ausstattung
  attr_accessible :etage, :groesse, :name, :pers_anz, :status
end
