require 'test_helper'

class FlavourProfilesControllerTest < ActionController::TestCase
  setup do
    @flavour_profile = flavour_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flavour_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flavour_profile" do
    assert_difference('FlavourProfile.count') do
      post :create, flavour_profile: { body: @flavour_profile.body, chocolate_notes: @flavour_profile.chocolate_notes, floral_notes: @flavour_profile.floral_notes, fruit_notes: @flavour_profile.fruit_notes, grain_notes: @flavour_profile.grain_notes, nut_notes: @flavour_profile.nut_notes, roast_notes: @flavour_profile.roast_notes, savory_notes: @flavour_profile.savory_notes, spice_notes: @flavour_profile.spice_notes, sugar_notes: @flavour_profile.sugar_notes }
    end

    assert_redirected_to flavour_profile_path(assigns(:flavour_profile))
  end

  test "should show flavour_profile" do
    get :show, id: @flavour_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flavour_profile
    assert_response :success
  end

  test "should update flavour_profile" do
    patch :update, id: @flavour_profile, flavour_profile: { body: @flavour_profile.body, chocolate_notes: @flavour_profile.chocolate_notes, floral_notes: @flavour_profile.floral_notes, fruit_notes: @flavour_profile.fruit_notes, grain_notes: @flavour_profile.grain_notes, nut_notes: @flavour_profile.nut_notes, roast_notes: @flavour_profile.roast_notes, savory_notes: @flavour_profile.savory_notes, spice_notes: @flavour_profile.spice_notes, sugar_notes: @flavour_profile.sugar_notes }
    assert_redirected_to flavour_profile_path(assigns(:flavour_profile))
  end

  test "should destroy flavour_profile" do
    assert_difference('FlavourProfile.count', -1) do
      delete :destroy, id: @flavour_profile
    end

    assert_redirected_to flavour_profiles_path
  end
end
