class DashboardController < ApplicationController
    skip_before_action :admin_only, only: [:home, :compare]

    def home
    end
    
    def compare
        @left_service = Service.find(params[:left])
        @right_service = Service.find(params[:right])
    end
end
