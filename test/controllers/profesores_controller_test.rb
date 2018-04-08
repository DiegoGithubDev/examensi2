require 'test_helper'

class ProfesoresControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get profesores_new_url
    assert_response :success
  end

end
