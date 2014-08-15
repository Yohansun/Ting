class AddParentNameToStudent < ActiveRecord::Migration
	def change
		add_column :students, :parent_name, :string
		add_column :students, :address, :string
	end
end
