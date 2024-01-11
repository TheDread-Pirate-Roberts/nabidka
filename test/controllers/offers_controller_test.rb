require 'test_helper'

class OffersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    @player = players(:one) # Assuming you have fixtures
    sign_in @player
  end

  test "should get index" do
    get offers_url
    assert_response :success
  end
end
