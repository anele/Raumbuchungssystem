require 'test_helper'

class AusstattungsControllerTest < ActionController::TestCase
  setup do
    @ausstattung = ausstattungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ausstattungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ausstattung" do
    assert_difference('Ausstattung.count') do
      post :create, ausstattung: { :bezeichnung => "test" }
    end

    assert_redirected_to ausstattung_path(assigns(:ausstattung))
  end

  test "should show ausstattung" do
    get :show, id: @ausstattung
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ausstattung
    assert_response :success
  end

  test "should update ausstattung" do
    put :update, id: @ausstattung, ausstattung: { :bezeichnung => "test1" }
    assert_redirected_to ausstattung_path(assigns(:ausstattung))
  end

  test "should destroy ausstattung" do
    assert_difference('Ausstattung.count', -1) do
      delete :destroy, id: @ausstattung
    end

    assert_redirected_to ausstattungs_path
  end
end
