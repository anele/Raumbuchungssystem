class Ausstattung < ActiveRecord::Base
  attr_accessible :bezeichnung
  has_many :besitzt
  has_many :raum, through: :besitzt
end
