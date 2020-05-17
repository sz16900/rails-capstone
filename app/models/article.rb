class Article < ApplicationRecord
    belongs_to :author, class_name: 'User'

    has_many :votes
    has_many :tags
    has_many :categories, :through => :tags

    validates :title, :text, :image, :author_id, presence: true

    def self.top_voted
        Article.find(
            Article.joins(:votes)
            .where("articles.id = votes.article_id")
            .order("articles.id ASC")
            .group("articles.id")
            .count()
            .first()[0])
    end
end
