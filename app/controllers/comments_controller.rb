class CommentsController < ApplicationController
    def create
        console
      @article = Article.find(params[:article_id])
      @comment = @article.comments.create(comment_params)
      redirect_to article_path(@article)
    end
  
    private
      def comment_params
        params.require(:comment).permit(:author_name, :body, :user_id)
      end
  end
  