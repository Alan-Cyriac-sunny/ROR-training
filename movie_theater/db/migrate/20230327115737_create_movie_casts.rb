class CreateMovieCasts < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_casts do |t|
      t.belongs_to :movie_id
      t.belongs_to :actor
      t.timestamps
    end
  end
end
