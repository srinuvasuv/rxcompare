require 'test_helper'

class DiscountControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
