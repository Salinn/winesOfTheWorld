require 'test_helper'

class WineClassesControllerTest < ActionController::TestCase
  setup do
    @wine_class = wine_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wine_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wine_class" do
    assert_difference('WineClass.count') do
      post :create, wine_class: { meeting_time: @wine_class.meeting_time, name: @wine_class.name }
    end

    assert_redirected_to wine_class_path(assigns(:wine_class))
  end

  test "should show wine_class" do
    get :show, id: @wine_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wine_class
    assert_response :success
  end

  test "should update wine_class" do
    patch :update, id: @wine_class, wine_class: { meeting_time: @wine_class.meeting_time, name: @wine_class.name }
    assert_redirected_to wine_class_path(assigns(:wine_class))
  end

  test "should destroy wine_class" do
    assert_difference('WineClass.count', -1) do
      delete :destroy, id: @wine_class
    end

    assert_redirected_to wine_classes_path
  end
end
