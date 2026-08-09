class Api::CitationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_citations_url
    assert_response :success
  end
end
