require 'test_helper'

class AnswerControllerTest < ActionController::TestCase
  test "should get body:string" do
    get :body:string
    assert_response :success
  end

  test "should get user:string" do
    get :user:string
    assert_response :success
  end

end
