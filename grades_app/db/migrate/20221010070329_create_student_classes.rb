class CreateStudentClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :student_classes do |t|
      t.string :title

      t.timestamps
    end
  end
end
