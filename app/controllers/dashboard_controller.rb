class DashboardController < ApplicationController
    skip_before_action :admin_only, only: [:home, :compare]

    def home
    end
    
    def compare
        @left_service = Service.find(params[:left])
        @left_channels = []
        @left_service.tiers.each do |tier|
            @left_channels = @left_channels | tier.channels
        end
        
        @right_service = Service.find(params[:right])
        @right_channels = []
        @right_service.tiers.each do |tier|
            @right_channels = @right_channels | tier.channels
        end
    end
end
