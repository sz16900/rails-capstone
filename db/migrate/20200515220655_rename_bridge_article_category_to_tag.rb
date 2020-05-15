class RenameBridgeArticleCategoryToTag < ActiveRecord::Migration[5.2]
  def change
    rename_table :bridge_article_categories, :tags 
  end
end
