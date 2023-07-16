require 'test_helper'

class Api::V1::LibrariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should return basic information about books in the library" do
    @book.update(checked_out: true, user: users(:john))

    get api_v1_libraries_url
    assert_response :success
    json_response = JSON.parse(response.body)
    assert_equal 'checked_out', json_response['data'][0]['attributes']['status']
    assert_equal 'John Doe', json_response['data'][0]['attributes']['checked_out_by']
  end
end