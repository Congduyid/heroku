require 'test_helper'

class LoaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loai = loais(:one)
  end

  test "should get index" do
    get loais_url
    assert_response :success
  end

  test "should get new" do
    get new_loai_url
    assert_response :success
  end

  test "should create loai" do
    assert_difference('Loai.count') do
      post loais_url, params: { loai: { loaihang: @loai.loaihang } }
    end

    assert_redirected_to loai_url(Loai.last)
  end

  test "should show loai" do
    get loai_url(@loai)
    assert_response :success
  end

  test "should get edit" do
    get edit_loai_url(@loai)
    assert_response :success
  end

  test "should update loai" do
    patch loai_url(@loai), params: { loai: { loaihang: @loai.loaihang } }
    assert_redirected_to loai_url(@loai)
  end

  test "should destroy loai" do
    assert_difference('Loai.count', -1) do
      delete loai_url(@loai)
    end

    assert_redirected_to loais_url
  end
end
