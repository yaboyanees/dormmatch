require 'test_helper'

class DormsControllerTest < ActionController::TestCase
  setup do
    @dorm = dorms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dorms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dorm" do
    assert_difference('Dorm.count') do
      post :create, dorm: { dorm_image: @dorm.dorm_image, location: @dorm.location, name: @dorm.name, num_roomates: @dorm.num_roomates, price: @dorm.price, room_image: @dorm.room_image, school_id: @dorm.school_id }
    end

    assert_redirected_to dorm_path(assigns(:dorm))
  end

  test "should show dorm" do
    get :show, id: @dorm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dorm
    assert_response :success
  end

  test "should update dorm" do
    patch :update, id: @dorm, dorm: { dorm_image: @dorm.dorm_image, location: @dorm.location, name: @dorm.name, num_roomates: @dorm.num_roomates, price: @dorm.price, room_image: @dorm.room_image, school_id: @dorm.school_id }
    assert_redirected_to dorm_path(assigns(:dorm))
  end

  test "should destroy dorm" do
    assert_difference('Dorm.count', -1) do
      delete :destroy, id: @dorm
    end

    assert_redirected_to dorms_path
  end
end
