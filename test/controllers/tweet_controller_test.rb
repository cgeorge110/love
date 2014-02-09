require 'test_helper'

class TweetControllerTest < ActionController::TestCase
  test "should get note_id:integer" do
    get :note_id:integer
    assert_response :success
  end

  test "should get to:string" do
    get :to:string
    assert_response :success
  end

  test "should get from:string" do
    get :from:string
    assert_response :success
  end

end
