class Ausstattung < ActiveRecord::Base
  attr_accessible :bezeichnung
  has_many :besitzt
  has_many :raum, through: :besitzt
  
  validates_presence_of :bezeichnung
  validates_uniqueness_of :bezeichnung
end
