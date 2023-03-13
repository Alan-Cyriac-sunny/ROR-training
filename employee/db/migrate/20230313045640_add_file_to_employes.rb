class AddFileToEmployes < ActiveRecord::Migration[7.0]
  def change
    add_column :employes, :file, :string
  end
end
