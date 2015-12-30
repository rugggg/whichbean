require 'test_helper'

class TerrainsControllerTest < ActionController::TestCase
  setup do
    @terrain = terrains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:terrains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create terrain" do
    assert_difference('Terrain.count') do
      post :create, terrain: { elevation: @terrain.elevation, exposure: @terrain.exposure, flavour_profile_id: @terrain.flavour_profile_id, groundwater: @terrain.groundwater }
    end

    assert_redirected_to terrain_path(assigns(:terrain))
  end

  test "should show terrain" do
    get :show, id: @terrain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @terrain
    assert_response :success
  end

  test "should update terrain" do
    patch :update, id: @terrain, terrain: { elevation: @terrain.elevation, exposure: @terrain.exposure, flavour_profile_id: @terrain.flavour_profile_id, groundwater: @terrain.groundwater }
    assert_redirected_to terrain_path(assigns(:terrain))
  end

  test "should destroy terrain" do
    assert_difference('Terrain.count', -1) do
      delete :destroy, id: @terrain
    end

    assert_redirected_to terrains_path
  end
end
