module HomePageHelper
    def article_all
        @article_voted = Article.most_voted
    end
end
