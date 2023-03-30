class AddTitleRatingToUserMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :user_movies, :comment_title, :string
    add_column :user_movies, :rating, :bigint
  end
end
