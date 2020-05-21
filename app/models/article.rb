class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'

  has_many :votes
  has_many :tags, inverse_of: :article
  has_many :categories, through: :tags

  validates :title, :text, :image, :author_id, presence: true

  accepts_nested_attributes_for :tags


  # I am avoiding an n+1 problem here by querying once inside the database
  def self.top_voted
    votes = Article.joins(:votes)
      .where('articles.id = votes.article_id')
      .group('articles.id')
      .count
      result = votes.max_by { |_k, v| v }[0]
    Article.find(result)
  end
end
