require 'test_helper'

class DeputiesControllerTest < ActionController::TestCase
  setup do
    @deputy = deputies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deputies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deputy" do
    assert_difference('Deputy.count') do
      post :create, deputy: { birthday: @deputy.birthday, fn: @deputy.fn, fraction_id: @deputy.fraction_id, ln: @deputy.ln, sn: @deputy.sn }
    end

    assert_redirected_to deputy_path(assigns(:deputy))
  end

  test "should show deputy" do
    get :show, id: @deputy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deputy
    assert_response :success
  end

  test "should update deputy" do
    patch :update, id: @deputy, deputy: { birthday: @deputy.birthday, fn: @deputy.fn, fraction_id: @deputy.fraction_id, ln: @deputy.ln, sn: @deputy.sn }
    assert_redirected_to deputy_path(assigns(:deputy))
  end

  test "should destroy deputy" do
    assert_difference('Deputy.count', -1) do
      delete :destroy, id: @deputy
    end

    assert_redirected_to deputies_path
  end
end
