class Raum < ActiveRecord::Base
  attr_accessible :etage, :groesse, :name, :pers_anz, :status
  has_many :besitzt
  has_many :ausstattung, through: :besitzt
  has_many :buchung
end
