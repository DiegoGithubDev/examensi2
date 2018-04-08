require 'test_helper'

class PadresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @padre = padres(:one)
  end

  test "should get index" do
    get padres_url
    assert_response :success
  end

  test "should get new" do
    get new_padre_url
    assert_response :success
  end

  test "should create padre" do
    assert_difference('Padre.count') do
      post padres_url, params: { padre: { apellido: @padre.apellido, name: @padre.name } }
    end

    assert_redirected_to padre_url(Padre.last)
  end

  test "should show padre" do
    get padre_url(@padre)
    assert_response :success
  end

  test "should get edit" do
    get edit_padre_url(@padre)
    assert_response :success
  end

  test "should update padre" do
    patch padre_url(@padre), params: { padre: { apellido: @padre.apellido, name: @padre.name } }
    assert_redirected_to padre_url(@padre)
  end

  test "should destroy padre" do
    assert_difference('Padre.count', -1) do
      delete padre_url(@padre)
    end

    assert_redirected_to padres_url
  end
end
