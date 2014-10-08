class CreateTeacherSigns < ActiveRecord::Migration
  def change
    create_table :teacher_signs do |t|
      t.string :teacher_name
      t.string :course_name
      t.datetime :date

      t.timestamps
    end
  end
end
