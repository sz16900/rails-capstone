class Article < ApplicationRecord
    belongs_to :author, class_name: 'User'

    has_many :votes
    has_many :tags
    has_many :categories, :through => :tags

    # def self.top_voted
    #     Article.select(:vote)
    # end
end
