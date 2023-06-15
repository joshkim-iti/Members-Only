class PostsController < ApplicationController
    def show
        @clubhouse = Clubhouse.find(params[:clubhouse_id])
        @user = User.find(params[:user_id])
        @post = Post.find(params[:id])
    end
end
