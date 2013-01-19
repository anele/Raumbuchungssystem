class Kunde < ActiveRecord::Base
  attr_accessible :login, :password,:password_confirmation,  :email, :fax, :firma, :name, :ort, :plz, :buchung_id, :strasse_nr, :tel, :vorname
  has_many :buchung
  has_secure_password
  validates_presence_of :password,:password_confirmation,:email, :firma, :name, :ort, :plz, :strasse_nr, :tel, :vorname, :on => :create    
    
  validates_format_of :name, :ort,:vorname, :with => /^[a-zA-Z -]*$/, :message=>"xx"
  validates_format_of :tel, :fax,:plz, :with => /^[0-9]*$/, :message=>"Bitte nur Zahlen eingeben"
  validates :email, :presence=>true, :email=>true
  
  after_create :send_welcome_email
  
  private
  
  def send_welcome_email
    Notification.new_account(self).deliver
  end
end
