require 'rails_helper'

RSpec.describe User, type: :model do
    before(:each) do
        @user = User.create(name: 'seth', email: 'cool@q.com', password: '12345678')
        @article = Article.create(author_id: @user.id, title:"My first...", text:"This is my ...", image:"long")
    end
    context 'tests the article model creation' do
        it 'create valid article' do
            expect(@article.valid?).to eq(true)
        end
        it 'checks article asociation' do
            expect(@article.author.name).to eq("seth")
            expect(@article.author.email).to eq("cool@q.com")
        end
        it 'checks article asociation' do
            @article2 = Article.new()
            expect(@article2.valid?).to eq(false)
        end
    end
end