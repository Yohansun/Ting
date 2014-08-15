class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :name
    	t.string :gender
    	t.date :birthday
    	t.string :mobile
    	t.integer :parent_id
    	t.string :level, :null => false, :default => "一级"
    	t.integer :card_number
    	t.boolean :active, :default => true
    	t.string :mail

		t.timestamps
    end
  end
end
