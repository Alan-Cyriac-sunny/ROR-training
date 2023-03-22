class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :student_id, unique: true
      t.string :name
      t.timestamps
    end
  end
end
