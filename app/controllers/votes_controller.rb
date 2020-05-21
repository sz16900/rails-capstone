class VotesController < ApplicationController
  before_action :find_article

  def create
    @vote = current_user.votes.new(article_id: params[:article_id])
    if @vote.save
      redirect_to category_path, notice: 'You voted an article.'
    else
      redirect_to category_path, alert: 'You cannot vote this post.'
    end
  end

  def destroy
    vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
    if vote
      vote.destroy
      redirect_to category_path, notice: 'You disvoted an article.'
    else
      redirect_to category_path, alert: 'You cannot disvote article that you did not vote before.'
    end
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
