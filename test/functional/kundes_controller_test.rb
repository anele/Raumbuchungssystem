require 'test_helper'

class KundesControllerTest < ActionController::TestCase
  setup do
    @kunde = kundes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kundes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kunde" do
    assert_difference('Kunde.count') do
      #post :create, kunde: {password: @kunde.password, password_confirmation:  @kunde.password_confirmation, email: @kunde.email, fax: @kunde.fax, firma: @kunde.firma, name: @kunde.name, ort: @kunde.ort, plz: @kunde.plz,  strasse_nr: @kunde.strasse_nr,vorname: @kunde.vorname, tel: @kunde.tel}
      post :create, kunde: {:password =>"1234", :password_confirmation=>"1234", :email => "Muster@web.de", :fax => "077322222", :firma => "Muster", :name => "Mustermann", :ort => "radolfzell", :plz =>78315,  :strasse_nr =>"Musterstr. 7", :vorname =>"Muster", :tel =>"077322222"}
    end

    assert_redirected_to kunde_path(assigns(:kunde))
  end

  test "should show kunde" do
    get :show, id: @kunde
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kunde
    assert_response :success
  end

  test "should update kunde" do
    #put :update, id: @kunde, kunde: {password: @kunde.password, password_confirmation:  @kunde.password_confirmation, email: @kunde.email, fax: @kunde.fax, firma: @kunde.firma, name: @kunde.name, ort: @kunde.ort, plz: @kunde.plz,  strasse_nr: @kunde.strasse_nr,vorname: @kunde.vorname, tel: @kunde.tel}
    put :update, id: @kunde, kunde: {:password =>"12345", :password_confirmation=>"12345", :email => "test@web.de", :fax => "077321111", :firma => "Test", :name => "Test", :ort => "Radolfzell", :plz =>78315, :strasse_nr =>"Teststr. 5",:vorname =>"Test", :tel =>"077321111"}    
    assert_redirected_to kunde_path(assigns(:kunde))
  end

  test "should destroy kunde" do
    assert_difference('Kunde.count', -1) do
      delete :destroy, id: @kunde
    end

    assert_redirected_to kundes_path
  end
end
