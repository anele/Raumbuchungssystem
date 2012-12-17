require 'test_helper'

class BuchungTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should create a new buchung" do
    buchung = Buchung.new(:anfangszeit=>"2013-06-12 10:33:09", :endzeit=>"2013-06-14 10:33:09", :kunde_id=>1, :raum_id=>3, :status=>"B")
    assert buchung.save
  end
  test "should not create a new buchung" do
    buchung = Buchung.new(:anfangszeit=>"2013-06-12 10:33:09", :endzeit=>"2013-06-14 10:33:09", :kunde_id=>nil, :raum_id=>3, :status=>"B")
    assert !buchung.save, "validate_on_create :anfangszeit"
  end
  test "should find a buchung" do
    assert Buchung.find(:first)
  end
  test "should be 2" do
    assert_equal 2, Buchung.count
  end
  test "should find 2 ausstattungs" do
    buchung1 = Buchung.find(:first)
    buchung2 = Buchung.find(:last)
    assert_not_same( buchung1, buchung2)
  end
  test "should destroy a buchung" do
    Buchung.find(:first).destroy
    assert_equal 1, Buchung.count
  end
  test "should create a valid buchung require raum" do
    buchung = Buchung.new(valid_buchung_attribute(:raum_id =>nil))
    assert !buchung.save, "Raum is missing"
  end
  test "should create a valid buchung require kunde" do
    buchung = Buchung.new(valid_buchung_attribute(:kunde_id =>nil))
    assert !buchung.save, "Kunde is missing"
  end
    
  test "should create a unique buchung" do
    buchung1 = Buchung.new(valid_buchung_attribute)
    assert buchung1.save
    buchung2 = Buchung.new(valid_buchung_attribute)
    assert !buchung2.save
  end
end
