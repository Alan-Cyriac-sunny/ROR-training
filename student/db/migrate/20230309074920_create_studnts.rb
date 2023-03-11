class CreateStudnts < ActiveRecord::Migration[7.0]
  def change
    create_table :studnts do |t|
      t.string :name
      t.string :phone
      t.timestamps
    end
  end
end
