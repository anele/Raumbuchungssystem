require 'test_helper'

class AusstattungTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should create a new ausstattung" do
    ausst = Ausstattung.new(:bezeichnung =>"Beamer")
    assert ausst.save
  end
  test "should not create a new ausstattung" do
    ausst = Ausstattung.new(:bezeichnung =>"")
    assert !ausst.save, "validates_presence_of :bezeichnung"
  end
  test "should find a ausstattung" do
    assert Ausstattung.find(:first)
  end
  test "should be 2" do
    assert_equal 2, Ausstattung.count
  end
  test "should find 2 ausstattungs" do
    ausst1 = Ausstattung.find(:first)
    ausst2 = Ausstattung.find(:last)
    assert_not_same( ausst1, ausst2)
  end
  test "should destroy a ausstattung" do
    Ausstattung.find(:first).destroy
    assert_equal 1, Ausstattung.count
  end
  test "should require uniqueness of an ausstattung bezeichnung" do
    ausst1 = Ausstattung.new(:bezeichnung => "Beamer")
    ausst2 = Ausstattung.new(:bezeichnung => "Internetanschluss")
    assert ausst1.save
    assert ausst2.save
  end
  test "should create a valid ausstattung" do
    ausst = Ausstattung.new(valid_ausstattung_attribute)
    assert ausst.save
  end
  test "should create a valid ausstattung require bezeichnung" do
    ausst = Ausstattung.new(valid_ausstattung_attribute(:bezeichnung =>nil))
    assert !ausst.save, "Bezeichnung is missing"
  end
  test "should create a unique ausstattung" do
    ausst1 = Ausstattung.new(valid_ausstattung_attribute)
    assert ausst1.save
    ausst2 = Ausstattung.new(valid_ausstattung_attribute)
    assert !ausst2.save
  end
end
