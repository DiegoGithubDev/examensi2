require 'test_helper'

class InfraccionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @infraccion = infraccions(:one)
  end

  test "should get index" do
    get infraccions_url
    assert_response :success
  end

  test "should get new" do
    get new_infraccion_url
    assert_response :success
  end

  test "should create infraccion" do
    assert_difference('Infraccion.count') do
      post infraccions_url, params: { infraccion: { fecha: @infraccion.fecha, infractor_id: @infraccion.infractor_id, monto_infracion: @infraccion.monto_infracion, policia_id: @infraccion.policia_id, tipo_infraccion_id: @infraccion.tipo_infraccion_id, vehiculo_id: @infraccion.vehiculo_id } }
    end

    assert_redirected_to infraccion_url(Infraccion.last)
  end

  test "should show infraccion" do
    get infraccion_url(@infraccion)
    assert_response :success
  end

  test "should get edit" do
    get edit_infraccion_url(@infraccion)
    assert_response :success
  end

  test "should update infraccion" do
    patch infraccion_url(@infraccion), params: { infraccion: { fecha: @infraccion.fecha, infractor_id: @infraccion.infractor_id, monto_infracion: @infraccion.monto_infracion, policia_id: @infraccion.policia_id, tipo_infraccion_id: @infraccion.tipo_infraccion_id, vehiculo_id: @infraccion.vehiculo_id } }
    assert_redirected_to infraccion_url(@infraccion)
  end

  test "should destroy infraccion" do
    assert_difference('Infraccion.count', -1) do
      delete infraccion_url(@infraccion)
    end

    assert_redirected_to infraccions_url
  end
end
