require 'test_helper'

class Api::V1::ServicesControllerTest < ActionDispatch::IntegrationTest

  test "create new requests" do
    params = {
      request: {
        details: 'New Request',
        language: 'Javascript',
        service_id: 2
      }
    }

    post api_v1_requests_url, params: params, as: :json

    assert_equal params[:request][:user_id], response.parsed_body['user_id']
    assert_equal params[:request][:details], response.parsed_body['details']
    assert_equal params[:request][:language], response.parsed_body['language']
    assert_equal params[:request][:service_id], response.parsed_body['service_id']
  end

end