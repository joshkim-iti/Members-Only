class ClubhousesController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @clubhouses = Clubhouse.all
    end
end
