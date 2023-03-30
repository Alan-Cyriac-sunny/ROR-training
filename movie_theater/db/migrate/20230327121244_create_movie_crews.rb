class CreateMovieCrews < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_crews do |t|
      t.belongs_to :crew
      t.belongs_to :movie
      t.timestamps
    end
  end
end
