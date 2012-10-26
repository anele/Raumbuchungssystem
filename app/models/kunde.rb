class Kunde < ActiveRecord::Base
  attr_accessible :login, :password,:password_confirmation,  :email, :fax, :firma, :name, :ort, :plz, :buchung_id, :strasse_nr, :tel, :vorname
  has_many :buchung
  has_secure_password
  validates_presence_of :password, :on => :create
end
