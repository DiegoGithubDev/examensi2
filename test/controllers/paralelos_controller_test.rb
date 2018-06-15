require 'test_helper'

class ParalelosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paralelo = paralelos(:one)
  end

  test "should get index" do
    get paralelos_url
    assert_response :success
  end

  test "should get new" do
    get new_paralelo_url
    assert_response :success
  end

  test "should create paralelo" do
    assert_difference('Paralelo.count') do
      post paralelos_url, params: { paralelo: { letra: @paralelo.letra } }
    end

    assert_redirected_to paralelo_url(Paralelo.last)
  end

  test "should show paralelo" do
    get paralelo_url(@paralelo)
    assert_response :success
  end

  test "should get edit" do
    get edit_paralelo_url(@paralelo)
    assert_response :success
  end

  test "should update paralelo" do
    patch paralelo_url(@paralelo), params: { paralelo: { letra: @paralelo.letra } }
    assert_redirected_to paralelo_url(@paralelo)
  end

  test "should destroy paralelo" do
    assert_difference('Paralelo.count', -1) do
      delete paralelo_url(@paralelo)
    end

    assert_redirected_to paralelos_url
  end
end
