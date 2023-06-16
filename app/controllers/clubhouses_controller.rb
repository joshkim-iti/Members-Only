class ClubhousesController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @clubhouses = Clubhouse.all
    end

    def new
        @clubhouse = Clubhouse.new
        @user = User.find(params[:user_id])
    end

    def create
        @clubhouse = Clubhouse.new(clubhouse_params)

        if @clubhouse.save
            redirect_to user_clubhouse_join_path(user_id: current_user.id, id: @clubhouse.id)
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def show
        @clubhouse = Clubhouse.find(params[:id])
        @user = User.find(params[:user_id])
    end

    def join
        @clubhouse = Clubhouse.find(params[:id])
        @user = User.find(params[:user_id])
        @user.clubhouses << @clubhouse
        @clubhouse.users << @user

        redirect_to user_clubhouse_path(user_id: current_user.id, id: @clubhouse.id)
    end

    private
    def clubhouse_params
        params.require(:clubhouse).permit(:name, :creator_id)
    end
end
