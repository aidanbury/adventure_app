require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Direct Adventures"
  end
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "home has direction" do
    get root_path
    assert_response :success
    directions = %w(North South East West)
    assert_includes directions, assigns(:s_dir)
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get user" do
    get user_path
    assert_response :success
    assert_select "title", "User | #{@base_title}"
  end

end
