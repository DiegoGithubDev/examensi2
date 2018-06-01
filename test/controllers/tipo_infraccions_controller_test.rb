require 'test_helper'

class TipoInfraccionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_infraccion = tipo_infraccions(:one)
  end

  test "should get index" do
    get tipo_infraccions_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_infraccion_url
    assert_response :success
  end

  test "should create tipo_infraccion" do
    assert_difference('TipoInfraccion.count') do
      post tipo_infraccions_url, params: { tipo_infraccion: { monto: @tipo_infraccion.monto, nombre: @tipo_infraccion.nombre } }
    end

    assert_redirected_to tipo_infraccion_url(TipoInfraccion.last)
  end

  test "should show tipo_infraccion" do
    get tipo_infraccion_url(@tipo_infraccion)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_infraccion_url(@tipo_infraccion)
    assert_response :success
  end

  test "should update tipo_infraccion" do
    patch tipo_infraccion_url(@tipo_infraccion), params: { tipo_infraccion: { monto: @tipo_infraccion.monto, nombre: @tipo_infraccion.nombre } }
    assert_redirected_to tipo_infraccion_url(@tipo_infraccion)
  end

  test "should destroy tipo_infraccion" do
    assert_difference('TipoInfraccion.count', -1) do
      delete tipo_infraccion_url(@tipo_infraccion)
    end

    assert_redirected_to tipo_infraccions_url
  end
end
