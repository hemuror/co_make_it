require 'test_helper'

class ComakeItsControllerTest < ActionController::TestCase
  setup do
    @comake_it = comake_its(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comake_its)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comake_it" do
    assert_difference('ComakeIt.count') do
      post :create, comake_it: { email: @comake_it.email, name: @comake_it.name, password: @comake_it.password }
    end

    assert_redirected_to comake_it_path(assigns(:comake_it))
  end

  test "should show comake_it" do
    get :show, id: @comake_it
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comake_it
    assert_response :success
  end

  test "should update comake_it" do
    patch :update, id: @comake_it, comake_it: { email: @comake_it.email, name: @comake_it.name, password: @comake_it.password }
    assert_redirected_to comake_it_path(assigns(:comake_it))
  end

  test "should destroy comake_it" do
    assert_difference('ComakeIt.count', -1) do
      delete :destroy, id: @comake_it
    end

    assert_redirected_to comake_its_path
  end
end
