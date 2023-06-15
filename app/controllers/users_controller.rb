class UsersController < ApplicationController
    def index
        #@user =  User.find(params[:user_id])
        @clubhouses = Clubhouse.all
    end
end
