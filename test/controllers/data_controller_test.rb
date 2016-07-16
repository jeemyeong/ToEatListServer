require 'test_helper'

class DataControllerTest < ActionController::TestCase
  test "should get food" do
    get :food
    assert_response :success
  end

end
