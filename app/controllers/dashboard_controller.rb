class DashboardController < ApplicationController
    skip_before_action :admin_only, only: [:home]

    def home
    end
end
