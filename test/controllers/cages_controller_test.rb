require "test_helper"

class CagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cage = cages(:one)
  end

  test "should get index" do
    get cages_url
    assert_response :success
  end

  test "should get new" do
    get new_cage_url
    assert_response :success
  end

  test "should create cage" do
    assert_difference('Cage.count') do
      post cages_url, params: { cage: { max_capacity: @cage.max_capacity, name: @cage.name, number_of_dinosaurs: @cage.number_of_dinosaurs, power_status: @cage.power_status } }
    end

    assert_redirected_to cage_url(Cage.last)
  end

  test "should show cage" do
    get cage_url(@cage)
    assert_response :success
  end

  test "should get edit" do
    get edit_cage_url(@cage)
    assert_response :success
  end

  test "should update cage" do
    patch cage_url(@cage), params: { cage: { max_capacity: @cage.max_capacity, name: @cage.name, number_of_dinosaurs: @cage.number_of_dinosaurs, power_status: @cage.power_status } }
    assert_redirected_to cage_url(@cage)
  end

  test "should destroy cage" do
    assert_difference('Cage.count', -1) do
      delete cage_url(@cage)
    end

    assert_redirected_to cages_url
  end
end
