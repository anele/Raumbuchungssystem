require 'test_helper'

class BuchungsControllerTest < ActionController::TestCase
  setup do
    @buchung = buchungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buchungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buchung" do
    assert_difference('Buchung.count') do
      post :create, buchung: { anfangszeit: @buchung.anfangszeit, buchungsnr: @buchung.buchungsnr, endzeit: @buchung.endzeit, kunde_id: @buchung.kunde_id, raum_id: @buchung.raum_id }
    end

    assert_redirected_to buchung_path(assigns(:buchung))
  end

  test "should show buchung" do
    get :show, id: @buchung
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buchung
    assert_response :success
  end

  test "should update buchung" do
    put :update, id: @buchung, buchung: { anfangszeit: @buchung.anfangszeit, buchungsnr: @buchung.buchungsnr, endzeit: @buchung.endzeit, kunde_id: @buchung.kunde_id, raum_id: @buchung.raum_id }
    assert_redirected_to buchung_path(assigns(:buchung))
  end

  test "should destroy buchung" do
    assert_difference('Buchung.count', -1) do
      delete :destroy, id: @buchung
    end

    assert_redirected_to buchungs_path
  end
end
