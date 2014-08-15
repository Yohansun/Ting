##
# = 父母
#
# == Fields
#
# name :: 姓名
# gender :: 性别
# birthday :: 生日
# mobile :: 电话
# address :: 家庭住址
#
# == Indexes
#
class Parent < ActiveRecord::Base
	
	has_many :students
	
end
