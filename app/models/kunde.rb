class Kunde < ActiveRecord::Base
  belongs_to :raum
  attr_accessible :email, :fax, :firma, :haus_nr, :kunden_id, :name, :ort, :plz, :strasse, :tel, :vorname
end
