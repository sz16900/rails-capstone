class CreateBridgeArticleCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :bridge_article_categories do |t|
      t.references :article, foreign_key: true
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
