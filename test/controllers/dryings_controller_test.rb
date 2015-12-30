require 'test_helper'

class DryingsControllerTest < ActionController::TestCase
  setup do
    @drying = dryings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dryings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drying" do
    assert_difference('Drying.count') do
      post :create, drying: { flavour_profile_id: @drying.flavour_profile_id, method: @drying.method }
    end

    assert_redirected_to drying_path(assigns(:drying))
  end

  test "should show drying" do
    get :show, id: @drying
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drying
    assert_response :success
  end

  test "should update drying" do
    patch :update, id: @drying, drying: { flavour_profile_id: @drying.flavour_profile_id, method: @drying.method }
    assert_redirected_to drying_path(assigns(:drying))
  end

  test "should destroy drying" do
    assert_difference('Drying.count', -1) do
      delete :destroy, id: @drying
    end

    assert_redirected_to dryings_path
  end
end
