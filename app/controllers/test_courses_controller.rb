# encoding: utf-8
class TestCoursesController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_test_course, only: [:show, :edit, :update, :destroy]

  def index
    @test_courses = TestCourse.all
    respond_with(@test_courses)
  end

  def show
    respond_with(@test_course)
  end

  def new
    @test_course = TestCourse.new
    respond_with(@test_course)
  end

  def edit
  end

  def create
    @test_course = TestCourse.new(test_course_params)
    @test_course.save
    respond_with(@test_course)
  end

  def update
    @test_course.update(test_course_params)
    respond_with(@test_course)
  end

  def destroy
    @test_course.destroy
    respond_with(@test_course)
  end

  def export
    @test_course = TeacherSign.all
    if @test_course
      send_data(@test_course.to_xls, :type => "text/xls; charset=utf-8;; header=present", :filename => "教师签到表.xls")
    else
      render nothing: true, status: 404
    end
  end

  private
    def set_test_course
      @test_course = TestCourse.find(params[:id])
    end

    def test_course_params
      params.require(:test_course).permit(:student_name, :course_name)
    end
end
