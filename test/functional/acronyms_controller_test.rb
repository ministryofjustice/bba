require 'test_helper'

class AcronymsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acronym = acronyms(:one)
  end

  test "should get index" do
    get acronyms_url
    assert_response :success
    assert_not_nil assigns(:acronyms)
  end

  test "should get new" do
    get new_acronym_url
    assert_response :success
  end

  test "should create acronym" do
    assert_difference('Acronym.count') do
      post acronyms_url(acronym: { acronym: @acronym.acronym, definition: @acronym.definition, info: @acronym.info, url: @acronym.url })
    end

    assert_redirected_to acronyms_path
  end

  test "should show acronym" do
    get acronym_url(id: @acronym)
    assert_response :success
  end

  test "should get edit" do
    get edit_acronym_url(id: @acronym)
    assert_response :success
  end

  test "should update acronym" do
    put acronym_url(id: @acronym, acronym: { acronym: @acronym.acronym, definition: @acronym.definition, info: @acronym.info, url: @acronym.url })
    assert_redirected_to acronyms_path
  end

  test "should destroy acronym" do
    assert_difference('Acronym.count', -1) do
      delete acronym_url(id: @acronym)
    end

    assert_redirected_to acronyms_path
  end
end
