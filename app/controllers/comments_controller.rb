class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)
        redirect_to clubhouse_post_path(clubhouse_id: params[:comment][:clubhouse_id], id: params[:post_id])
      end
    
      private
        def comment_params
          params.require(:comment).permit(:body, :user_id, :post_id)
        end
end
