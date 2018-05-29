require 'test_helper'

class MulctControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mulct_index_url
    assert_response :success
  end

end
