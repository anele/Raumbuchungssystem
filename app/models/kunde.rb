class Kunde < ActiveRecord::Base
  attr_accessible :email, :fax, :firma, :name, :ort, :plz, :raum_id, :strasse_nr, :tel, :vorname
  has_many :buchung
end
