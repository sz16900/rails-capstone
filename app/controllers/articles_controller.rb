class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]


  # GET /articles
  # GET /articles.json
  def index
    @categories = Category.all
    @featured_article = Article.top_voted
    @categories = Category.top_priority

  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
    @article.tags.build
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles 
  # POST /articles.json
  def create
    @article = Article.new(image: article_params[:image], text: article_params[:text], title: article_params[:title], author_id: current_user.id)
    respond_to do |format|
      if @article.save

        # Make sure the Tag is created via the nested forms :)
        cat = Category.find_by_name(article_params[:tags_attributes]["0"][:category_name])
        Tag.create(article_id: @article.id, category_id: cat.id, category_name: cat.name)

        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:id, :author, :title, :text, :image, tags_attributes: [:category_name])
    end
end
