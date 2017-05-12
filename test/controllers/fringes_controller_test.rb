require 'test_helper'

class FringesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fringe = fringes(:one)
  end

  test "should get index" do
    get fringes_url
    assert_response :success
  end

  test "should get new" do
    get new_fringe_url
    assert_response :success
  end

  test "should create fringe" do
    assert_difference('Fringe.count') do
      post fringes_url, params: { fringe: { fecha: @fringe.fecha, primera_hasta: @fringe.primera_hasta, primera_precio: @fringe.primera_precio, segunda_hasta: @fringe.segunda_hasta, segunda_precio: @fringe.segunda_precio, tercera_precio: @fringe.tercera_precio } }
    end

    assert_redirected_to fringe_url(Fringe.last)
  end

  test "should show fringe" do
    get fringe_url(@fringe)
    assert_response :success
  end

  test "should get edit" do
    get edit_fringe_url(@fringe)
    assert_response :success
  end

  test "should update fringe" do
    patch fringe_url(@fringe), params: { fringe: { fecha: @fringe.fecha, primera_hasta: @fringe.primera_hasta, primera_precio: @fringe.primera_precio, segunda_hasta: @fringe.segunda_hasta, segunda_precio: @fringe.segunda_precio, tercera_precio: @fringe.tercera_precio } }
    assert_redirected_to fringe_url(@fringe)
  end

  test "should destroy fringe" do
    assert_difference('Fringe.count', -1) do
      delete fringe_url(@fringe)
    end

    assert_redirected_to fringes_url
  end
end
