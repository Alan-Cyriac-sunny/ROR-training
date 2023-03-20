class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.references :user, null: false, foreign_key: true
      t.string :payment_status

      t.timestamps
    end
  end
end
