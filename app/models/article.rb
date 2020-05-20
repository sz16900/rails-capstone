class Article < ApplicationRecord
    belongs_to :author, class_name: 'User'
    
    has_many :votes
    has_many :tags
    has_many :categories, through: :tags      

    # I am avoiding an n+1 problem here by querying once inside the database
    def self.top_voted
            votes = Article.joins(:votes)
            .where("articles.id = votes.article_id")
            .group("articles.id")
            .count()
            # This can be re-factored to take place all in the database, for now i dunno how and theres no time
            Article.find(votes.max_by{|k,v| v}[0])
    end
end
