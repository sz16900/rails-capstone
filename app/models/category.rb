class Category < ApplicationRecord
    has_many :bridge_article_categories
    has_many :articles, :through => :bridge_article_categories
end
