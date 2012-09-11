class Kunde < ActiveRecord::Base
  belongs_to :raum
  attr_accessible :email, :fax, :firma, :haus_nr, :name, :ort, :plz, :strasse, :tel, :vorname
end
