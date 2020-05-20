class AddColumnToTags < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :category_name, :string
  end
end
