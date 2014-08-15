class AddCostIdToStudents < ActiveRecord::Migration
	def change
		add_column :students, :cost_id, :integer
	end
end

