require 'test_helper'

class RaumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  require 'test_helper'

  test "should create a new raum" do
    raum = Raum.new(:etage =>"EG", :groesse=>15, :name =>"Sonnenschein",  :pers_anz =>5)
    assert raum.save
  end
  test "should not create a new raum" do
    raum = Raum.new(:etage =>"EG", :groesse=>15, :name =>"",  :pers_anz =>5)
    assert !raum.save, "validates_presence_of :name"
  end
  test "should find a raum" do
    assert Raum.find(:first)
  end
  test "should be 2" do
    assert_equal 2, Raum.count
  end
  test "should find 2 raums" do
    raum1 = Raum.find(:first)
    raum2 = Raum.find(:last)
    assert_not_same( raum1, raum2)
  end
  test "should destroy a raum" do
    Raum.find(:first).destroy
    assert_equal 1, Raum.count
  end
  test "should require uniqueness of an raum name" do
    raum1 = Raum.new(:etage =>"EG", :groesse=>15, :name =>"Sonnenschein",  :pers_anz =>5)
    raum2 = Raum.new(:etage =>"OG", :groesse=>20, :name =>"Regenbogen",  :pers_anz =>7)
    assert raum1.save
    assert raum2.save
  end
  test "should create a valid raum" do
    raum = Raum.new(valid_raum_attribute)
    assert raum.save
  end
  test "should create a valid raum require name" do
    raum = Raum.new(valid_raum_attribute(:name =>nil))
    assert !raum.save, "name is missing"
  end
  test "should create a unique raum" do
    raum1 = Raum.new(valid_raum_attribute)
    assert raum1.save
    raum2 = Raum.new(valid_raum_attribute)
    assert !raum2.save
  end
  
end
