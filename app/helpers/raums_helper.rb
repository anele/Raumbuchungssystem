module RaumsHelper
  def buchung(raum_id,d)  
    @exists = Buchung.find(:all, :select=>"anfangszeit,endzeit,status", :conditions=>['STRFTIME("%Y-%m-%d", anfangszeit)<= ? and STRFTIME("%Y-%m-%d", endzeit)>= ?   and raum_id = ?',d,d,raum_id])
 end
end