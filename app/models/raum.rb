class Raum < ActiveRecord::Base
  attr_accessible :etage, :groesse, :name, :pers_anz, :status
  has_many :besitzt
  has_many :ausstattung, through: :besitzt
  has_many :buchung
  
  
  def self.search(search)
    #search_condition= "%" + search + "%"
    #find(:all, :conditions =>['name LIKE ?',  search_condition, search_condition])
  end
  
  def self.anzahlTeilnehmer()
    #where pers_anz<=params[:pers_anz]
  end
  
end
