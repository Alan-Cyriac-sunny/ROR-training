class CreateUserMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :user_movies do |t|
      t.belongs_to :user
      t.belongs_to :movie
      t.text :comment
      t.timestamps
    end
  end
end
