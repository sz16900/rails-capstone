require 'rails_helper'

RSpec.describe User, type: :model do
    before(:each) do
        @user = User.create(name: 'seth', email: 'cool@q.com', password: '12345678')
        @article = Article.create(author_id: @user.id, title:"My first...", text:"This is my ...", image:"")
        @vote = Vote.new(user_id: @user.id, article_id: @article.id)
    end
    context 'tests the article model creation' do
        it 'create valid vote' do
            expect(@vote.valid?).to eq(true)
        end
        it 'create valid article associations' do
            expect(@vote.user.name).to eq("seth")
            expect(@vote.article.title).to eq("My first...")
        end
        it 'user votes in duplication' do
            @vote2 = Vote.create(user_id: 4, article_id: 4)
            @vote3 = Vote.new(user_id: 4, article_id: 4)
            expect(@vote3.valid?).to eq(false)
        end
    end
end