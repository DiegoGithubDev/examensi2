require 'test_helper'

class InfractorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @infractor = infractors(:one)
  end

  test "should get index" do
    get infractors_url
    assert_response :success
  end

  test "should get new" do
    get new_infractor_url
    assert_response :success
  end

  test "should create infractor" do
    assert_difference('Infractor.count') do
      post infractors_url, params: { infractor: { apellido_materno: @infractor.apellido_materno, apellido_paterno: @infractor.apellido_paterno, fecha_de_emision: @infractor.fecha_de_emision, fecha_de_vencimiento: @infractor.fecha_de_vencimiento, nacionalidad: @infractor.nacionalidad, nombre: @infractor.nombre, numero_de_licencia: @infractor.numero_de_licencia, sexo: @infractor.sexo } }
    end

    assert_redirected_to infractor_url(Infractor.last)
  end

  test "should show infractor" do
    get infractor_url(@infractor)
    assert_response :success
  end

  test "should get edit" do
    get edit_infractor_url(@infractor)
    assert_response :success
  end

  test "should update infractor" do
    patch infractor_url(@infractor), params: { infractor: { apellido_materno: @infractor.apellido_materno, apellido_paterno: @infractor.apellido_paterno, fecha_de_emision: @infractor.fecha_de_emision, fecha_de_vencimiento: @infractor.fecha_de_vencimiento, nacionalidad: @infractor.nacionalidad, nombre: @infractor.nombre, numero_de_licencia: @infractor.numero_de_licencia, sexo: @infractor.sexo } }
    assert_redirected_to infractor_url(@infractor)
  end

  test "should destroy infractor" do
    assert_difference('Infractor.count', -1) do
      delete infractor_url(@infractor)
    end

    assert_redirected_to infractors_url
  end
end
