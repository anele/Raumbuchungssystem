module RaumsHelper
  def buchung(raum_id,d)    
    #@exists = Buchung.find_by_sql("SELECT anfangszeit, endzeit FROM buchungs WHERE (anfangszeit like '#{d.year}-#{d.month}%' and endzeit like '#{d.year}-#{d.month}%' and raum_id = '#{raum_id}')")
    #@exists = Buchung.find(:all, :select=>"anfangszeit,endzeit", :conditions=>['STRFTIME("%Y", anfangszeit) like ? and STRFTIME("%m", anfangszeit) like ? and STRFTIME("%d", anfangszeit) like ? and STRFTIME("%Y", endzeit) like ? and STRFTIME("%m", endzeit) like ? and STRFTIME("%d", endzeit) like ? and raum_id = ?',d.year, '%02d'% d.month, '%02d'% d.day,d.year, '%02d'% d.month, '%02d'% d.day,raum_id])
    
    @exists = Buchung.find(:all, :select=>"anfangszeit,endzeit", :conditions=>['STRFTIME("%Y", anfangszeit) like ? and STRFTIME("%m", anfangszeit) like ? and STRFTIME("%d", anfangszeit) like ? and raum_id = ?',d.year, '%02d'% d.month, '%02d'% d.day,raum_id])
    return @exists
  end

end