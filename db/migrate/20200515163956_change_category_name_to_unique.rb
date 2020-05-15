class ChangeCategoryNameToUnique < ActiveRecord::Migration[5.2]
  def change
    change_column :categories, :name, :string, unique: true
  end
end
