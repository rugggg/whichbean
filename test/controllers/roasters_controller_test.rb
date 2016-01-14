require 'test_helper'

class RoastersControllerTest < ActionController::TestCase
  setup do
    @roaster = roasters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roasters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roaster" do
    assert_difference('Roaster.count') do
      post :create, roaster: { address: @roaster.address, country: @roaster.country, latitude: @roaster.latitude, longitude: @roaster.longitude, name: @roaster.name, region: @roaster.region, zip: @roaster.zip }
    end

    assert_redirected_to roaster_path(assigns(:roaster))
  end

  test "should show roaster" do
    get :show, id: @roaster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roaster
    assert_response :success
  end

  test "should update roaster" do
    patch :update, id: @roaster, roaster: { address: @roaster.address, country: @roaster.country, latitude: @roaster.latitude, longitude: @roaster.longitude, name: @roaster.name, region: @roaster.region, zip: @roaster.zip }
    assert_redirected_to roaster_path(assigns(:roaster))
  end

  test "should destroy roaster" do
    assert_difference('Roaster.count', -1) do
      delete :destroy, id: @roaster
    end

    assert_redirected_to roasters_path
  end
end
