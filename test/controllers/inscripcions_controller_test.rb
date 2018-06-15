require 'test_helper'

class InscripcionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inscripcion = inscripcions(:one)
  end

  test "should get index" do
    get inscripcions_url
    assert_response :success
  end

  test "should get new" do
    get new_inscripcion_url
    assert_response :success
  end

  test "should create inscripcion" do
    assert_difference('Inscripcion.count') do
      post inscripcions_url, params: { inscripcion: { curso_id: @inscripcion.curso_id, estudiante_id: @inscripcion.estudiante_id, fecha: @inscripcion.fecha, monto: @inscripcion.monto } }
    end

    assert_redirected_to inscripcion_url(Inscripcion.last)
  end

  test "should show inscripcion" do
    get inscripcion_url(@inscripcion)
    assert_response :success
  end

  test "should get edit" do
    get edit_inscripcion_url(@inscripcion)
    assert_response :success
  end

  test "should update inscripcion" do
    patch inscripcion_url(@inscripcion), params: { inscripcion: { curso_id: @inscripcion.curso_id, estudiante_id: @inscripcion.estudiante_id, fecha: @inscripcion.fecha, monto: @inscripcion.monto } }
    assert_redirected_to inscripcion_url(@inscripcion)
  end

  test "should destroy inscripcion" do
    assert_difference('Inscripcion.count', -1) do
      delete inscripcion_url(@inscripcion)
    end

    assert_redirected_to inscripcions_url
  end
end
