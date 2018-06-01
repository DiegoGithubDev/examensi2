require 'test_helper'

class PoliciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @policium = policia(:one)
  end

  test "should get index" do
    get policia_url
    assert_response :success
  end

  test "should get new" do
    get new_policium_url
    assert_response :success
  end

  test "should create policium" do
    assert_difference('Policium.count') do
      post policia_url, params: { policium: { apellido_materno: @policium.apellido_materno, apellido_paterno: @policium.apellido_paterno, cargo: @policium.cargo, nombre: @policium.nombre } }
    end

    assert_redirected_to policium_url(Policium.last)
  end

  test "should show policium" do
    get policium_url(@policium)
    assert_response :success
  end

  test "should get edit" do
    get edit_policium_url(@policium)
    assert_response :success
  end

  test "should update policium" do
    patch policium_url(@policium), params: { policium: { apellido_materno: @policium.apellido_materno, apellido_paterno: @policium.apellido_paterno, cargo: @policium.cargo, nombre: @policium.nombre } }
    assert_redirected_to policium_url(@policium)
  end

  test "should destroy policium" do
    assert_difference('Policium.count', -1) do
      delete policium_url(@policium)
    end

    assert_redirected_to policia_url
  end
end
