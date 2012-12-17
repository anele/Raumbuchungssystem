require 'test_helper'

class BesitztTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  require 'test_helper'

  test "should create a new besitzt" do
    besitzt = Besitzt.new(:raum_id=>4, :ausstattung_id=>2)
    assert besitzt.save
  end
  test "should not create a new besitzt" do
    besitzt = Besitzt.new(:raum_id=>"", :ausstattung_id=>2)
    assert !besitzt.save, "validates_presence_of :raum_id"
  end
  test "should find a besitzt" do
    assert Besitzt.find(:first)
  end
  test "should be 2" do
    assert_equal 2, Besitzt.count
  end
  test "should find 2 raums" do
    besitzt1 = Besitzt.find(:first)
    besitzt2 = Besitzt.find(:last)
    assert_not_same( besitzt1, besitzt2)
  end
  test "should destroy a besitzt" do
    Besitzt.find(:first).destroy
    assert_equal 1, Besitzt.count
  end
  
end
