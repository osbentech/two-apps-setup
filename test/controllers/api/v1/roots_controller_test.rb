require 'test_helper'

class Api::V1::RootsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_root = api_v1_roots(:one)
  end

  test 'should get index' do
    get api_v1_roots_url, as: :json
    assert_response :success
  end

  test 'should create api_v1_root' do
    assert_difference('Api::V1::Root.count') do
      post api_v1_roots_url, params: { api_v1_root: {} }, as: :json
    end

    assert_response :created
  end

  test 'should show api_v1_root' do
    get api_v1_root_url(@api_v1_root), as: :json
    assert_response :success
  end

  test 'should update api_v1_root' do
    patch api_v1_root_url(@api_v1_root), params: { api_v1_root: {} }, as: :json
    assert_response :success
  end

  test 'should destroy api_v1_root' do
    assert_difference('Api::V1::Root.count', -1) do
      delete api_v1_root_url(@api_v1_root), as: :json
    end

    assert_response :no_content
  end
end
