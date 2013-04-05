require 'test_helper'

class AcronymsControllerTest < ActionController::TestCase
  setup do
    @acronym = acronyms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acronyms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acronym" do
    assert_difference('Acronym.count') do
      post :create, acronym: { acronym: @acronym.acronym, definition: @acronym.definition, info: @acronym.info, url: @acronym.url }
    end

    assert_redirected_to acronym_path(assigns(:acronym))
  end

  test "should show acronym" do
    get :show, id: @acronym
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acronym
    assert_response :success
  end

  test "should update acronym" do
    put :update, id: @acronym, acronym: { acronym: @acronym.acronym, definition: @acronym.definition, info: @acronym.info, url: @acronym.url }
    assert_redirected_to acronym_path(assigns(:acronym))
  end

  test "should destroy acronym" do
    assert_difference('Acronym.count', -1) do
      delete :destroy, id: @acronym
    end

    assert_redirected_to acronyms_path
  end
end
