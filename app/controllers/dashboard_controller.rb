class DashboardController < ApplicationController
    skip_before_action :admin_only #, only: [:home, :compare]

    def home
        all_services = Service.where.not(description: '')
        @service = all_services[rand(all_services.count)]
    end
    
    def faq
    end
    
    def dismen
    end
    
    def compare
        @all_channels = [];
    
        @left_service = Service.friendly.find(params[:left])
        @left_channels = []
        @left_service.tiers.each do |tier|
            @left_channels = @left_channels | tier.channels
            @all_channels = @all_channels | tier.channels
            
            tier.channels.each do |channel|
                curchan = @all_channels[@all_channels.index(channel)]
                if curchan.css_class
                    curchan.css_class += " tier#{tier.id}"
                else
                    curchan.css_class = "tier#{tier.id}"
                end
            end
        end
        
        @right_service = Service.friendly.find(params[:right])
        @right_channels = []
        @right_service.tiers.each do |tier|
            @right_channels = @right_channels | tier.channels
            @all_channels = @all_channels | tier.channels
            
            tier.channels.each do |channel|
                curchan = @all_channels[@all_channels.index(channel)]
                if curchan.css_class
                    curchan.css_class += " tier#{tier.id}"
                else
                    curchan.css_class = "tier#{tier.id}"
                end
            end
        end
        
        #@all_channels = @left_channels | @right_channels
        @all_channels.sort! { |a,b| a.name <=> b.name }
    end
end
