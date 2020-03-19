module ArticlesHelper
    def category_name(val)
        @article = Article.find(val)
        if @article.category.nil?
            "Empty Category"
        else
            @article.category.name
        end
    end
end
