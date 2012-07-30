require 'test_helper'

class BloodDonorsControllerTest < ActionController::TestCase
  setup do
    @blood_donor = blood_donors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blood_donors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blood_donor" do
    assert_difference('BloodDonor.count') do
      post :create, blood_donor: { bloodGroup: @blood_donor.bloodGroup, city: @blood_donor.city, email: @blood_donor.email, gender: @blood_donor.gender, name: @blood_donor.name, state: @blood_donor.state, zip: @blood_donor.zip }
    end

    assert_redirected_to blood_donor_path(assigns(:blood_donor))
  end

  test "should show blood_donor" do
    get :show, id: @blood_donor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blood_donor
    assert_response :success
  end

  test "should update blood_donor" do
    put :update, id: @blood_donor, blood_donor: { bloodGroup: @blood_donor.bloodGroup, city: @blood_donor.city, email: @blood_donor.email, gender: @blood_donor.gender, name: @blood_donor.name, state: @blood_donor.state, zip: @blood_donor.zip }
    assert_redirected_to blood_donor_path(assigns(:blood_donor))
  end

  test "should destroy blood_donor" do
    assert_difference('BloodDonor.count', -1) do
      delete :destroy, id: @blood_donor
    end

    assert_redirected_to blood_donors_path
  end
end
