require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.create(name: 'seth', email: 'cool@q.com',
                        password: '12345678')
    @article = Article.create(author_id: @user.id,
                              title: 'My first...', text: 'This is my ...',
                              image: 'long')
  end
  context 'tests the article model creation' do
    it 'create valid article' do
      expect(@article.valid?).to eq(true)
    end
    it 'checks article asociation' do
      expect(@article.author.name).to eq('seth')
      expect(@article.author.email).to eq('cool@q.com')
    end
    it 'checks article validity' do
      @article2 = Article.new
      expect(@article2.valid?).to eq(false)
    end
    it 'checks article top voting' do
      u1 = User.create(name: 'john', email: 'john@gmail.com', password: '123456789')
      u2 = User.create(name: 'mike', email: 'mike@gmail.com', password: '123456789')
      u3 = User.create(name: 'juan', email: 'juan@gmail.com', password: '123456789')
      article1 = Article.create(author_id: @user.id,
                                title: 'My first...', text: 'This is my ...',
                                image: 'long')
      article2 = Article.create(author_id: @user.id,
                                title: 'My sec...', text: 'This is my ...',
                                image: 'longs')
      Vote.create(user_id: u1.id, article_id: article1.id)
      Vote.create(user_id: u2.id, article_id: article1.id)
      Vote.create(user_id: u3.id, article_id: article2.id)
      result = Article.top_voted
      expect(result.id).to eq(article1.id)
    end
  end
end
