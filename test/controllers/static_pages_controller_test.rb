require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | OdogwudozillaBlog"
  end

  # test "should get about" do
  #   get about_path
  #   assert_response :success
  #   assert_select "title", "About | OdogwudozillaBlog"
  # end

  test "should get project" do
    get projects_path
    assert_response :success
    assert_select "title", "Projects | OdogwudozillaBlog"
  end

end
