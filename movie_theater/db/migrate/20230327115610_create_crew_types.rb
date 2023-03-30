class CreateCrewTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :crew_types do |t|
      t.string :name
      t.timestamps
    end
  end
end
