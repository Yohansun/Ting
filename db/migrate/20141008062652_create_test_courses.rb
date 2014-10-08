class CreateTestCourses < ActiveRecord::Migration
  def change
    create_table :test_courses do |t|
      t.string :student_name
      t.string :course_name

      t.timestamps
    end
  end
end
