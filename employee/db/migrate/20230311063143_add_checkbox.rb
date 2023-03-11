class AddCheckbox < ActiveRecord::Migration[7.0]
  def change
    add_column :employes, :skills, :text
    add_column :employes, :gender, :string
    add_column :employes, :department, :string
  end
end
