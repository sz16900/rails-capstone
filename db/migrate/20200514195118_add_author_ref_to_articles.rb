class AddAuthorRefToArticles < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :author, :integer
    add_reference :articles, :author, foreign_key: { to_table: :users }
  end
end
