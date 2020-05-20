class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'

  has_many :votes
  has_many :tags, inverse_of: :article
  has_many :categories, through: :tags

  accepts_nested_attributes_for :tags

  # I am avoiding an n+1 problem here by querying once inside the database
  def self.top_voted
    votes = Article.joins(:votes)
      .where('articles.id = votes.article_id')
      .group('articles.id')
      .count
    Article.find(votes.max_by { |_k, v| v }[0])
  end
end
