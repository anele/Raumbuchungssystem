class Buchung < ActiveRecord::Base
  attr_accessible :anfangszeit, :buchungsnr, :endzeit, :kunde_id, :raum_id
  belongs_to :kunde, :raum
end
