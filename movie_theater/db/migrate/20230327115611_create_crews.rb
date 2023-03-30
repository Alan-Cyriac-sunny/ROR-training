class CreateCrews < ActiveRecord::Migration[7.0]
  def change
    create_table :crews do |t|
      t.string :name
      t.belongs_to :crew_type
      t.timestamps
    end
  end
end
