require 'test_helper'

class PreparationsControllerTest < ActionController::TestCase
  setup do
    @preparation = preparations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preparations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preparation" do
    assert_difference('Preparation.count') do
      post :create, preparation: { flavour_profile_id: @preparation.flavour_profile_id, type: @preparation.type }
    end

    assert_redirected_to preparation_path(assigns(:preparation))
  end

  test "should show preparation" do
    get :show, id: @preparation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @preparation
    assert_response :success
  end

  test "should update preparation" do
    patch :update, id: @preparation, preparation: { flavour_profile_id: @preparation.flavour_profile_id, type: @preparation.type }
    assert_redirected_to preparation_path(assigns(:preparation))
  end

  test "should destroy preparation" do
    assert_difference('Preparation.count', -1) do
      delete :destroy, id: @preparation
    end

    assert_redirected_to preparations_path
  end
end
