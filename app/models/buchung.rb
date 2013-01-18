class Buchung < ActiveRecord::Base  
  attr_accessible :anfangszeit, :buchungsnr, :endzeit, :kunde_id, :raum_id, :status
  belongs_to :kunde
  belongs_to :raum
  validate :validate_on_create 
  
  def validate_on_create    
    if anfangszeit < Date.tomorrow
      errors.add(:anfangszeit, "muss in der Zukunft liegen.")
    end
    
    if  endzeit < anfangszeit
      errors.add(:endzeit, "Endzeit muss groesser als Anfangzeit sein")
    end
    
    if raum_id.nil?
      errors.add(:raum_id, "bitte auswaehlen")      
    end 
    
  end
  
  
 
end
