class ClubhousesController < ApplicationController
    before_action :authenticate_user!
    def index
    end

    def show
        @clubhouse = Clubhouse.find(params[:id])
    end
end
