# encoding: utf-8
class TeacherSignsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_teacher_sign, only: [:show, :edit, :update, :destroy]

  def index
    @teacher_signs = TeacherSign.all
    respond_with(@teacher_signs)
  end

  def show
    respond_with(@teacher_sign)
  end

  def new
    @teacher_sign = TeacherSign.new
    respond_with(@teacher_sign)
  end

  def edit
  end

  def create
    @teacher_sign = TeacherSign.new(teacher_sign_params)
    @teacher_sign.save
    respond_with(@teacher_sign)
  end

  def update
    @teacher_sign.update(teacher_sign_params)
    respond_with(@teacher_sign)
  end

  def destroy
    @teacher_sign.destroy
    respond_with(@teacher_sign)
  end

  def export
    @teacher_signs = TeacherSign.all
    if @teacher_signs
      send_data(@teacher_signs.to_xls, :type => "text/xls; charset=utf-8;; header=present", :filename => "教师签到表.xls")
    else
      render nothing: true, status: 404
    end
  end

  private
    def set_teacher_sign
      @teacher_sign = TeacherSign.find(params[:id])
    end

    def teacher_sign_params
      params.require(:teacher_sign).permit(:teacher_name, :course_name, :date)
    end
end
