class VotesController < ApplicationController
  before_action :find_article

  def create
    if already_voted?
      flash[:notice] = "You can't like more than once"
    else
      @article.votes.create(user_id: current_user.id)
    end
    redirect_to category_path(id: @article.categories[0].id)
  end

  private

  def find_article
    @article = Article.find(params[:article_id])
  end

  def already_voted?
    Vote.where(user_id: current_user.id, article_id:
    params[:article_id]).exists?
  end
end
