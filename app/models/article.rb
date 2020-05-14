class Article < ApplicationRecord
    belongs_to :author, class_name: 'User'

    has_many :votes
    has_many :bridge_article_categories
    has_many :categories, :through => :bridge_article_categories  
end
