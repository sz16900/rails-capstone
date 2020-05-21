# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.integer :author, foreign_key: true
      t.string :title
      t.text :text
      t.string :image

      t.timestamps
    end
  end
end
