require 'test_helper'

class DocumentControllerTest < ActionDispatch::IntegrationTest
  test "should get download" do
    get document_download_url
    assert_response :success
  end

end
