require 'test_helper'
class RaumbuchungTest < ActionDispatch::IntegrationTest
  fixtures :kundes, :buchungs
  
  setup do
    @kunde = kundes(:one)
  end
  
  test "login and browse site" do
    # login via https
     https!
    get "/kundes"
    get "/kundes/new"
    get "/buchungs"
    get "/buchungs/new"    
    get "/raums"
    get "/raums/new"
    get "/ausstattungs"
    get "/ausstattungs/new"
    get "/besitzts"
    get "/besitzts/new"    
    assert_response :success
              
    post_via_redirect "/login", :email=>"test@web.de", :password=>"12345"  
    https!(false)
   end     
end