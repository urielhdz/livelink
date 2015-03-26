require 'test_helper'

class MyLinksControllerTest < ActionController::TestCase
  setup do
    @my_link = my_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_link" do
    assert_difference('MyLink.count') do
      post :create, my_link: {  }
    end

    assert_redirected_to my_link_path(assigns(:my_link))
  end

  test "should show my_link" do
    get :show, id: @my_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_link
    assert_response :success
  end

  test "should update my_link" do
    patch :update, id: @my_link, my_link: {  }
    assert_redirected_to my_link_path(assigns(:my_link))
  end

  test "should destroy my_link" do
    assert_difference('MyLink.count', -1) do
      delete :destroy, id: @my_link
    end

    assert_redirected_to my_links_path
  end
end
