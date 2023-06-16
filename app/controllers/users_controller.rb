class UsersController < ApplicationController
    def show
        @user = User.find(current_user.id)
        @clubhouse = @user.clubhouses
        @post = @user.posts
        @comments = @user.comments
    end
end
