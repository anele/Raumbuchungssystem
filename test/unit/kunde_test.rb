require 'test_helper'

class KundeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    test "should create a new kunde" do
    kunde = Kunde.new(:password =>"12345", :password_confirmation=>"12345", :email => "test@web.de", :fax => "077321111", :firma => "Test", :name => "Test", :ort => "Radolfzell", :plz =>78315, :strasse_nr =>"Teststr. 5",:vorname =>"Test", :tel =>"077321111")
    
    assert kunde.save
  end
  test "should not create a new kunde name" do
    kunde = Kunde.new(:password =>"12345", :password_confirmation=>"12345", :email => "test@web.de", :fax => "077321111", :firma => "Test", :name => "", :ort => "Radolfzell", :plz =>78315, :strasse_nr =>"Teststr. 5",:vorname =>"Test", :tel =>"077321111")
    assert !kunde.save, "validates_presence_of :name"
  end
    test "should not create a new kunde tel" do
      kunde = Kunde.new(:password =>"12345", :password_confirmation=>"12345", :email => "test@web.de", :fax => "077321111", :firma => "Test", :name => "Test", :ort => "Radolfzell", :plz =>78315, :strasse_nr =>"Teststr. 5",:vorname =>"Test", :tel =>"abcd")
    assert !kunde.save, "validates_format_of :tel"
  end  
  test "should find a kunde" do
    assert Kunde.find(:first)
  end
  test "should be 2" do
    assert_equal 2, Kunde.count
  end
  test "should find 2 ausstattungs" do
    kunde1 = Kunde.find(:first)
    kunde2 = Kunde.find(:last)
    assert_not_same( kunde1, kunde2)
  end
  test "should destroy a kunde" do
    Kunde.find(:first).destroy
    assert_equal 1, Kunde.count
  end
  test "should create a valid kunde require name" do
    kunde = Kunde.new(valid_kunde_attribute(:name =>nil))
    assert !kunde.save, "Name is missing"
  end
  
    
  test "should create a unique kunde" do
    kunde1 = Kunde.new(valid_kunde_attribute)
    assert kunde1.save,"kunde1 failed"
    kunde2 = Kunde.new(valid_kunde_attribute)
    assert !kunde2.save, "kunde2 failed"
  end
  
   test "should check password" do
      kunde = Kunde.find(:first)
      kunde.password = "MyString"
      kunde.password_confirmation = "testpass"
      assert !kunde.save
      
      kunde.password = ""
      kunde.password_confirmation = "testpass"
      assert !kunde.save                
   end
end
