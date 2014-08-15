class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
    	t.string :name
    	t.string :gender
    	t.date :birthday
    	t.string :mobile
    	t.string :address

		t.timestamps
    end
  end
end
