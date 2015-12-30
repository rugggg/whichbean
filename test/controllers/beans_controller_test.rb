require 'test_helper'

class BeansControllerTest < ActionController::TestCase
  setup do
    @bean = beans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bean" do
    assert_difference('Bean.count') do
      post :create, bean: { cultivation_id: @bean.cultivation_id, drying_id: @bean.drying_id, harvest_id: @bean.harvest_id, integer: @bean.integer, integer: @bean.integer, integer: @bean.integer, integer: @bean.integer, integer: @bean.integer, integer: @bean.integer, integer: @bean.integer, integer: @bean.integer, integer: @bean.integer, location_id: @bean.location_id, name: @bean.name, preparation_id: @bean.preparation_id, roast_id: @bean.roast_id, terrain_id: @bean.terrain_id, varietal_id: @bean.varietal_id, weather_id: @bean.weather_id }
    end

    assert_redirected_to bean_path(assigns(:bean))
  end

  test "should show bean" do
    get :show, id: @bean
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bean
    assert_response :success
  end

  test "should update bean" do
    patch :update, id: @bean, bean: { cultivation_id: @bean.cultivation_id, drying_id: @bean.drying_id, harvest_id: @bean.harvest_id, integer: @bean.integer, integer: @bean.integer, integer: @bean.integer, integer: @bean.integer, integer: @bean.integer, integer: @bean.integer, integer: @bean.integer, integer: @bean.integer, integer: @bean.integer, location_id: @bean.location_id, name: @bean.name, preparation_id: @bean.preparation_id, roast_id: @bean.roast_id, terrain_id: @bean.terrain_id, varietal_id: @bean.varietal_id, weather_id: @bean.weather_id }
    assert_redirected_to bean_path(assigns(:bean))
  end

  test "should destroy bean" do
    assert_difference('Bean.count', -1) do
      delete :destroy, id: @bean
    end

    assert_redirected_to beans_path
  end
end
