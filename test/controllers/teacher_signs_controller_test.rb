require 'test_helper'

class TeacherSignsControllerTest < ActionController::TestCase
  setup do
    @teacher_sign = teacher_signs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teacher_signs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher_sign" do
    assert_difference('TeacherSign.count') do
      post :create, teacher_sign: { course_name: @teacher_sign.course_name, date: @teacher_sign.date, teacher_name: @teacher_sign.teacher_name }
    end

    assert_redirected_to teacher_sign_path(assigns(:teacher_sign))
  end

  test "should show teacher_sign" do
    get :show, id: @teacher_sign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher_sign
    assert_response :success
  end

  test "should update teacher_sign" do
    patch :update, id: @teacher_sign, teacher_sign: { course_name: @teacher_sign.course_name, date: @teacher_sign.date, teacher_name: @teacher_sign.teacher_name }
    assert_redirected_to teacher_sign_path(assigns(:teacher_sign))
  end

  test "should destroy teacher_sign" do
    assert_difference('TeacherSign.count', -1) do
      delete :destroy, id: @teacher_sign
    end

    assert_redirected_to teacher_signs_path
  end
end
