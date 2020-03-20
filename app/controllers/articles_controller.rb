class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
    # @article.build_category
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)
    @article.author_id = params[:author_id]
    @article.user = current_user
    @category = Category.find_by(params[:name])
    # debugger
    @article.category_id = @category.id
      if @article.save
        redirect_to @article, notice: 'Article was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
      if @article.update(article_params)
          redirect_to @article, notice: 'Article was successfully updated.'
      else
          render :edit
      end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
        redirect_to articles_url, notice: 'Article was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :text, :image, :category_id ,categories_attribute: [:name])
    end
end
