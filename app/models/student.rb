##
# = 学生
#
# == Fields
#
# name :: 姓名
# gender :: 性别
# birthday :: 生日
# mobile :: 电话
# parent_id :: 父母
# level :: 等级
# card_number :: 会员卡号
# active? :: 有效？
# mail :: 邮箱地址
#
# == Indexes
#
class Student < ActiveRecord::Base
	
	belongs_to :parent
	
	default_scope  { order(:created_at => :desc) }
	scope :active,  ->{ where(active: true) }
	
end
