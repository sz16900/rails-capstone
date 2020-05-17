require 'rails_helper'

RSpec.describe User, type: :model do
    before(:each) do
        @user = User.create(name: 'seth', email: 'cool@q.com', password: '12345678')
        @article = Article.create(author_id: @user.id, title:"My first...", text:"This is my ...", image:"")
    end
    context 'tests the tag model creation' do
        it 'tags in duplication' do
            @tag = Tag.create(article_id:1, category_id:1)
            @tag2 = Tag.new(article_id:1, category_id:1)
            expect(@tag2.valid?).to eq(false)
        end
    end
end