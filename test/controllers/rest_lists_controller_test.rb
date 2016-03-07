require 'test_helper'

class RestListsControllerTest < ActionController::TestCase
  setup do
    @rest_list = rest_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rest_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rest_list" do
    assert_difference('RestList.count') do
      post :create, rest_list: { city: @rest_list.city, description: @rest_list.description, menu_link: @rest_list.menu_link, phone_num: @rest_list.phone_num, rest_name: @rest_list.rest_name, state: @rest_list.state, street_address: @rest_list.street_address, zipcode: @rest_list.zipcode }
    end

    assert_redirected_to rest_list_path(assigns(:rest_list))
  end

  test "should show rest_list" do
    get :show, id: @rest_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rest_list
    assert_response :success
  end

  test "should update rest_list" do
    patch :update, id: @rest_list, rest_list: { city: @rest_list.city, description: @rest_list.description, menu_link: @rest_list.menu_link, phone_num: @rest_list.phone_num, rest_name: @rest_list.rest_name, state: @rest_list.state, street_address: @rest_list.street_address, zipcode: @rest_list.zipcode }
    assert_redirected_to rest_list_path(assigns(:rest_list))
  end

  test "should destroy rest_list" do
    assert_difference('RestList.count', -1) do
      delete :destroy, id: @rest_list
    end

    assert_redirected_to rest_lists_path
  end
end
