require 'test_helper'

class InfrastructuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @infrastructure = infrastructures(:one)
  end

  test "should get index" do
    get infrastructures_url
    assert_response :success
  end

  test "should get new" do
    get new_infrastructure_url
    assert_response :success
  end

  test "should create infrastructure" do
    assert_difference('Infrastructure.count') do
      post infrastructures_url, params: { infrastructure: { detalle: @infrastructure.detalle, nombre: @infrastructure.nombre } }
    end

    assert_redirected_to infrastructure_url(Infrastructure.last)
  end

  test "should show infrastructure" do
    get infrastructure_url(@infrastructure)
    assert_response :success
  end

  test "should get edit" do
    get edit_infrastructure_url(@infrastructure)
    assert_response :success
  end

  test "should update infrastructure" do
    patch infrastructure_url(@infrastructure), params: { infrastructure: { detalle: @infrastructure.detalle, nombre: @infrastructure.nombre } }
    assert_redirected_to infrastructure_url(@infrastructure)
  end

  test "should destroy infrastructure" do
    assert_difference('Infrastructure.count', -1) do
      delete infrastructure_url(@infrastructure)
    end

    assert_redirected_to infrastructures_url
  end
end
