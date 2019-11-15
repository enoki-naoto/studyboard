require 'test_helper'

class CategorysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get categorys_new_url
    assert_response :success
  end

  test "should get index" do
    get categorys_index_url
    assert_response :success
  end

end
