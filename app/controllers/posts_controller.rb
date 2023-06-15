class PostsController < ApplicationController
    def show
        @clubhouse = Clubhouse.find(params[:clubhouse_id])
        @user = User.find(current_user.id)
        @post = Post.find(params[:id])
    end
    def new
        @post = Post.new
        @clubhouse = Clubhouse.find(params[:clubhouse_id])
        @user = User.find(params[:user_id])
    end

    def create
        @post = Post.new(post_params)
        @clubhouse = Clubhouse.find(params[:clubhouse_id])
        @user = User.find(current_user.id)

        if @post.save
            puts "Saved"
            redirect_to user_clubhouse_path(user_id: current_user.id, id: @clubhouse.id)
        else
            puts "not saved"
            puts :unprocessable_entity
            render :new, status: :unprocessable_entity
        end
    end

    private

    def post_params
        params.require(:post).permit(:title, :body, :user_id, :clubhouse_id)
    end
end
