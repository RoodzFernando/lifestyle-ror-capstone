module ArticlesHelper
    def category_name(val)
        @article = Article.find(val)
        if @article.category.nil?
            "Undefined Category"
        else
            @article.category.name
        end
    end

    def category_all
        @categories = Category.all
    end

    def category_view(val)
        @category = Category.find(val)
        @category.article_id = @article.id
    end
end
