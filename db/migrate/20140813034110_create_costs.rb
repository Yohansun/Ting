class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.string :name
      t.integer :student_id
      t.decimal :price

      t.timestamps
    end
  end
end
