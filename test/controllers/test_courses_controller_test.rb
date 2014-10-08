require 'test_helper'

class TestCoursesControllerTest < ActionController::TestCase
  setup do
    @test_course = test_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_course" do
    assert_difference('TestCourse.count') do
      post :create, test_course: { course_name: @test_course.course_name, student_name: @test_course.student_name }
    end

    assert_redirected_to test_course_path(assigns(:test_course))
  end

  test "should show test_course" do
    get :show, id: @test_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_course
    assert_response :success
  end

  test "should update test_course" do
    patch :update, id: @test_course, test_course: { course_name: @test_course.course_name, student_name: @test_course.student_name }
    assert_redirected_to test_course_path(assigns(:test_course))
  end

  test "should destroy test_course" do
    assert_difference('TestCourse.count', -1) do
      delete :destroy, id: @test_course
    end

    assert_redirected_to test_courses_path
  end
end
