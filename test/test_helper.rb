ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
  
  def valid_ausstattung_attribute(add_attributes={})
  {
    :bezeichnung => "Beamer"
  }.merge(add_attributes)
  end
  
  def valid_raum_attribute(add_attributes={})
  {
    :etage =>"EG",
    :groesse => 15,
    :name => "Sonnenschein",
    :pers_anz =>5
  }.merge(add_attributes)
  end
  
  def valid_buchung_attribute(add_attributes={})
  {
    :anfangszeit=>"2013-06-12 10:33:09",     
    :endzeit=>"2013-06-14 10:33:09", 
    :kunde_id=>1, 
    :raum_id=>3, 
    :status=>"B"
  }.merge(add_attributes)
  end
  
  def valid_kunde_attribute(add_attributes={})
  {
    :password =>"12345",
    :password_confirmation=>"12345", 
    :email => "test@web.de", 
    :fax => "077321111", 
    :firma => "Test", 
    :name => "Test", 
    :ort => "Radolfzell", 
    :plz =>78315, 
    :strasse_nr =>"Teststr. 5",
    :vorname =>"Test", 
    :tel =>"077321111"
  }.merge(add_attributes)
  end
  
  
end
