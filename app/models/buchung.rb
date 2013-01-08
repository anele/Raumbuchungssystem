class Buchung < ActiveRecord::Base
  attr_accessible :anfangszeit, :buchungsnr, :endzeit, :kunde_id, :raum_id, :status
  belongs_to :kunde
  belongs_to :raum
  
 
 
end
