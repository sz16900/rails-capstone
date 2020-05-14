class Article < ApplicationRecord
    belongs_to :user

    has_many :votes
    has_many :bridge_article_categories
    has_many :categories, :through => :bridge_article_categories  
end
