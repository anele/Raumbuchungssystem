require 'test_helper'

class BesitztsControllerTest < ActionController::TestCase
  setup do
    @besitzt = besitzts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:besitzts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create besitzt" do
    assert_difference('Besitzt.count') do
      post :create, besitzt: { :ausstattung_id=>1, :raum_id=>1}
    end

    assert_redirected_to besitzt_path(assigns(:besitzt))
  end

  test "should show besitzt" do
    get :show, id: @besitzt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @besitzt
    assert_response :success
  end

  test "should update besitzt" do
    put :update, id: @besitzt, besitzt: { :ausstattung_id=>1, :raum_id=>4 }
    assert_redirected_to besitzt_path(assigns(:besitzt))
  end

  test "should destroy besitzt" do
    assert_difference('Besitzt.count', -1) do
      delete :destroy, id: @besitzt
    end

    assert_redirected_to besitzts_path
  end
end
