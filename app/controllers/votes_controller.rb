class VotesController < ApplicationController

    def create
        @user = User.find_by(id: current_user)
        @article = Article.find(3)
        @vote = Vote.create(user_id: @user.id, article_id:  @article.id)
        redirect_to articles_path
        flash[:success] = 'You have voted.'
    end
end
