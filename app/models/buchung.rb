class Buchung < ActiveRecord::Base  
  attr_accessible :anfangszeit, :buchungsnr, :endzeit, :kunde_id, :raum_id, :status
  belongs_to :kunde
  belongs_to :raum
  validate :validate_on_create 
  
  def validate_on_create    
    if kunde_id.nil?
      errors.add(:kunde, "ist nicht angemeldet. Bitte loggen Sie sich ein!")  
    else
      if anfangszeit < Date.tomorrow
        errors.add(:anfangszeit, "muss in der Zukunft liegen")
      end
      
      if  endzeit < anfangszeit
        errors.add(:endzeit, "muss groesser als Anfangzeit sein")
      end
      
      if raum_id.nil?
        errors.add(:raum_id, "bitte auswaehlen")      
      end            
    end

    @bookexists = Buchung.find(:all, :select=>"anfangszeit,endzeit,status,kunde_id,raum_id", :conditions=>['(anfangszeit Between ? and ? or endzeit between ? and ? or anfangszeit < ? and endzeit > ?) and raum_id =?',anfangszeit, endzeit,anfangszeit,endzeit,anfangszeit,endzeit,raum_id])
    
    @flag = false
    if !@bookexists.nil? or @bookexists.length > 0 
        for book in @bookexists
          if book.status =='B'
            @flag=true
            errors.add(:raum_id, "ist vom #{book.anfangszeit} bis #{book.endzeit} nicht verfuegbar")
          end
          if book.status == 'R'
            if @flag ==false
              errors.add(:raum_id, " #{book.raum_id} ist vom #{book.anfangszeit} bis #{book.endzeit} reserviert. Der Kunde wurde informiert und wird entweder verbindlich buchen oder die Reservierung stornieren.")
               #@kunde=Kunde.find_by_id(book.kunde_id)
              @kunden=Kunde.find(:all, :conditions=>['id =?',book.kunde_id])
              for kunde in @kunden     
                Notification.reservation(kunde).deliver
              end
            end           
          end
        end
    end   
  end
 end
