require 'test_helper'

class SampleOneControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sample_one_index_url
    assert_response :success
  end

end
