require 'test_helper'

class PhotoUploadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photo_upload = photo_uploads(:one)
  end

  test "should get index" do
    get photo_uploads_url
    assert_response :success
  end

  test "should get new" do
    get new_photo_upload_url
    assert_response :success
  end

  test "should create photo_upload" do
    assert_difference('PhotoUpload.count') do
      post photo_uploads_url, params: { photo_upload: { image_data: @photo_upload.image_data } }
    end

    assert_redirected_to photo_upload_url(PhotoUpload.last)
  end

  test "should show photo_upload" do
    get photo_upload_url(@photo_upload)
    assert_response :success
  end

  test "should get edit" do
    get edit_photo_upload_url(@photo_upload)
    assert_response :success
  end

  test "should update photo_upload" do
    patch photo_upload_url(@photo_upload), params: { photo_upload: { image_data: @photo_upload.image_data } }
    assert_redirected_to photo_upload_url(@photo_upload)
  end

  test "should destroy photo_upload" do
    assert_difference('PhotoUpload.count', -1) do
      delete photo_upload_url(@photo_upload)
    end

    assert_redirected_to photo_uploads_url
  end
end
