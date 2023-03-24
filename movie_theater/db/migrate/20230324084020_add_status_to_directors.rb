class AddStatusToDirectors < ActiveRecord::Migration[7.0]
  def change
    add_column :directors, :status, :boolean, default: true
  end
end
