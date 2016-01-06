require 'test_helper'

class ProducersControllerTest < ActionController::TestCase
  setup do
    @producer = producers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producer" do
    assert_difference('Producer.count') do
      post :create, producer: { country: @producer.country, elevation_max: @producer.elevation_max, elevation_min: @producer.elevation_min, latitude: @producer.latitude, longitude: @producer.longitude, name: @producer.name, region: @producer.region }
    end

    assert_redirected_to producer_path(assigns(:producer))
  end

  test "should show producer" do
    get :show, id: @producer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producer
    assert_response :success
  end

  test "should update producer" do
    patch :update, id: @producer, producer: { country: @producer.country, elevation_max: @producer.elevation_max, elevation_min: @producer.elevation_min, latitude: @producer.latitude, longitude: @producer.longitude, name: @producer.name, region: @producer.region }
    assert_redirected_to producer_path(assigns(:producer))
  end

  test "should destroy producer" do
    assert_difference('Producer.count', -1) do
      delete :destroy, id: @producer
    end

    assert_redirected_to producers_path
  end
end
