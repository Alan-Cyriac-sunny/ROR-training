class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.belongs_to :user_movies
      t.belongs_to :user
      t.boolean :status
      t.timestamps
    end
  end
end
